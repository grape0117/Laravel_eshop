@extends(Theme::getThemeNamespace() . '::views.ecommerce.customers.master')
@section('content')

    <div class="ps-section--account-setting">
        <div class="ps-section__header">
            <h3>{{ SeoHelper::getTitle() }}</h3>
        </div>
        <div class="ps-section__content">
            <p><i class="icon-user"></i>&nbsp;<span class="d-inline-block">{{ __('Name') }}:</span>&nbsp;<strong>{{ auth('customer')->user()->name }}</strong></p>
            @if (auth('customer')->user()->dob)
                <p><i class="icon-calendar-31"></i>&nbsp;<span class="d-inline-block">{{ __('Date of birth') }}:</span>&nbsp;<strong>{{ auth('customer')->user()->dob }}</strong></p>
            @endif
            <p><i class="icon-envelope"></i>&nbsp;<span class="d-inline-block">{{ __('Email') }}:</span>&nbsp;<strong>{{ auth('customer')->user()->email }}</strong></p>
            <p><i class="icon-phone-bubble"></i>&nbsp;<span class="d-inline-block">{{ __('Phone') }}:</span>&nbsp;<strong>{{ auth('customer')->user()->phone ? auth('customer')->user()->phone : __('N/A') }}</strong></p>
        </div>
    </div>

@endsection

