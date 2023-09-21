<?php

namespace Botble\LanguageAdvanced\Supports;

use Botble\Base\Facades\MacroableModels;
use Botble\Base\Models\BaseModel;
use Botble\Language\Facades\Language;
use Botble\LanguageAdvanced\Models\TranslationResolver;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class LanguageAdvancedManager
{
    public static function save(Model|null $object, Request $request): bool
    {
        if (! self::isSupported($object)) {
            return false;
        }

        $language = $request->input('language');

        if (! $language) {
            $language = Language::getCurrentAdminLocaleCode();
        }

        $condition = [
            'lang_code' => $language,
            $object->getTable() . '_id' => $object->getKey(),
        ];

        $table = $object->getTable() . '_translations';

        $data = [];
        foreach (DB::getSchemaBuilder()->getColumnListing($table) as $column) {
            if (! in_array($column, array_keys($condition))) {
                $data[$column] = $request->input($column);
            }
        }

        $data = array_merge($data, $condition);

        $translate = DB::table($table)->where($condition)->first();

        if ($translate) {
            DB::table($table)->where($condition)->update($data);
        } else {
            DB::table($table)->insert($data);
        }

        if ($language != Language::getDefaultLocaleCode()) {
            $defaultTranslation = DB::table($table)
                ->where([
                    'lang_code' => Language::getDefaultLocaleCode(),
                    $object->getTable() . '_id' => $object->getKey(),
                ])
                ->first();

            if ($defaultTranslation) {
                foreach (DB::getSchemaBuilder()->getColumnListing($table) as $column) {
                    if (! in_array($column, array_keys($condition))) {
                        $object->{$column} = $defaultTranslation->{$column};
                    }
                }

                $object->save();
            }
        }

        return true;
    }

    public static function isSupported(Model|string|null $model): bool
    {
        if (! $model) {
            return false;
        }

        if (is_object($model)) {
            $model = get_class($model);
        }

        return in_array($model, self::supportedModels());
    }

    public static function supportedModels(): array
    {
        return array_keys(self::getSupported());
    }

    public static function getSupported(): array
    {
        return config('plugins.language-advanced.general.supported', []);
    }

    public static function getConfigs(): array
    {
        return config('plugins.language-advanced.general', []);
    }

    public static function getTranslatableColumns(Model|string|null $model): array
    {
        if (! $model) {
            return [];
        }

        if (is_object($model)) {
            $model = get_class($model);
        }

        return Arr::get(self::getSupported(), $model, []);
    }

    public static function registerModule(string $model, array $columns): bool
    {
        config([
            'plugins.language-advanced.general.supported' => array_merge(self::getSupported(), [$model => $columns]),
        ]);

        return true;
    }

    public static function delete(Model|string|null $object): bool
    {
        if (! self::isSupported($object)) {
            return false;
        }

        $table = $object->getTable() . '_translations';

        DB::table($table)->where([$object->getTable() . '_id' => $object->getKey()])->delete();

        return true;
    }

    public static function isTranslatableMetaBox(string $metaBoxKey): bool
    {
        return in_array($metaBoxKey, Arr::get(self::getConfigs(), 'translatable_meta_boxes', []));
    }

    public static function addTranslatableMetaBox(string $metaBoxKey): bool
    {
        $metaBoxes = array_merge(Arr::get(self::getConfigs(), 'translatable_meta_boxes', []), [$metaBoxKey]);

        config(['plugins.language-advanced.general.translatable_meta_boxes' => $metaBoxes]);

        return true;
    }

    public static function initModelRelations(): void
    {
        foreach (self::getSupported() as $item => $columns) {
            if (! class_exists($item)) {
                continue;
            }

            /**
             * @var BaseModel $item
             */
            $item::resolveRelationUsing('translations', function ($model) {
                $instance = tap(
                    new TranslationResolver(),
                    function ($instance) {
                        if (! $instance->getConnectionName()) {
                            $instance->setConnection(DB::getDefaultConnection());
                        }
                    }
                );

                $instance->setTable($model->getTable() . '_translations');

                $instance->fillable(array_merge([
                    'lang_code',
                    $model->getTable() . '_id',
                ], self::getTranslatableColumns(get_class($model))));

                return (new HasMany(
                    $instance->newQuery(),
                    $model,
                    $model->getTable() . '_translations.' . $model->getTable() . '_id',
                    $model->getKeyName()
                ))->where('lang_code', is_in_admin() ? Language::getCurrentAdminLocaleCode() : Language::getCurrentLocaleCode());
            });

            foreach ($columns as $column) {
                MacroableModels::addMacro(
                    $item,
                    'get' . ucfirst(Str::camel($column)) . 'Attribute',
                    function () use ($column) {
                        /**
                         * @var BaseModel $this
                         */

                        $locale = is_in_admin() ? Language::getCurrentAdminLocaleCode() : Language::getCurrentLocaleCode();
                        if (! $this->lang_code && $locale != Language::getDefaultLocaleCode()) {
                            $translation = $this->translations->where('lang_code', $locale)->first();

                            if ($translation) {
                                return $translation->{$column};
                            }
                        }

                        return $this->getAttribute($column);
                    }
                );
            }
        }
    }
}
