<?php

namespace Botble\Blog\Http\Controllers;

use Botble\Base\Facades\BaseHelper;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\SeoHelper\Facades\SeoHelper;
use Botble\Theme\Facades\Theme;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class PublicController extends Controller
{
    public function getSearch(Request $request, PostInterface $postRepository)
    {
        $query = BaseHelper::stringify($request->input('q'));

        if (! $query || ! is_string($query)) {
            abort(404);
        }

        $title = __('Search result for: ":query"', compact('query'));

        SeoHelper::setTitle($title)
            ->setDescription($title);

        $posts = $postRepository->getSearch($query, 0, 12);

        Theme::breadcrumb()
            ->add(__('Home'), route('public.index'))
            ->add($title, route('public.search'));

        return Theme::scope('search', compact('posts'))
            ->render();
    }
}
