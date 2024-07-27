<div class="  text-center">
    <a href="{{url("/admin/dash")}}">
        <img style="width: 100px" alt="Logo" src="../{{\App\Models\Setting::first()->app_logo}}"/>
    </a>
</div>
<li class="menu-section">
    <h4 class="menu-text">{{__("language.dashboard")}}</h4>
    <i class="menu-icon ki ki-bold-more-hor icon-md"></i>
</li>


<li class="menu-item @if(strpos(url()->current(), "dash" )) menu-item-active @endif  " aria-haspopup="true"
    data-menu-toggle="hover">
    @includeIf("admin.layout.aside.main-item" ,["href"=>"/admin/dash" , "title" => trans('language.dashboard') , "icon" => "menu-icon fas fa-tachometer-alt" ])
</li>

<li class="menu-item menu-item-submenu @if(strpos(url()->current(), "/roles" ) || strpos(url()->current(), "/permissions" )) menu-item-active menu-item-open  @endif "
    aria-haspopup="true" data-menu-toggle="hover">
    <a href="javascript:;" class="menu-link menu-toggle">
        <span class="menu-icon svg-icon svg-icon-primary svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\keen\theme\demo5\dist/../src/media/svg/icons\Home\Commode2.svg--><svg
                    xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <rect x="0" y="0" width="24" height="24"/>
                <path d="M5.5,2 L18.5,2 C19.3284271,2 20,2.67157288 20,3.5 L20,6.5 C20,7.32842712 19.3284271,8 18.5,8 L5.5,8 C4.67157288,8 4,7.32842712 4,6.5 L4,3.5 C4,2.67157288 4.67157288,2 5.5,2 Z M11,4 C10.4477153,4 10,4.44771525 10,5 C10,5.55228475 10.4477153,6 11,6 L13,6 C13.5522847,6 14,5.55228475 14,5 C14,4.44771525 13.5522847,4 13,4 L11,4 Z"
                      fill="#000000" opacity="0.3"/>
                <path d="M5.5,9 L18.5,9 C19.3284271,9 20,9.67157288 20,10.5 L20,13.5 C20,14.3284271 19.3284271,15 18.5,15 L5.5,15 C4.67157288,15 4,14.3284271 4,13.5 L4,10.5 C4,9.67157288 4.67157288,9 5.5,9 Z M11,11 C10.4477153,11 10,11.4477153 10,12 C10,12.5522847 10.4477153,13 11,13 L13,13 C13.5522847,13 14,12.5522847 14,12 C14,11.4477153 13.5522847,11 13,11 L11,11 Z M5.5,16 L18.5,16 C19.3284271,16 20,16.6715729 20,17.5 L20,20.5 C20,21.3284271 19.3284271,22 18.5,22 L5.5,22 C4.67157288,22 4,21.3284271 4,20.5 L4,17.5 C4,16.6715729 4.67157288,16 5.5,16 Z M11,18 C10.4477153,18 10,18.4477153 10,19 C10,19.5522847 10.4477153,20 11,20 L13,20 C13.5522847,20 14,19.5522847 14,19 C14,18.4477153 13.5522847,18 13,18 L11,18 Z"
                      fill="#000000"/>
            </g>
        </svg><!--end::Svg Icon--></span>

        <span class="menu-text">{{__("language.roles")}}</span>
        <em class="menu-arrow"></em>
    </a>
    <div class="menu-submenu">
        <em class="menu-arrow"></em>
        <ul class="menu-subnav">


            <li class="menu-item  "
                aria-haspopup="true"
                data-menu-toggle="hover">
                @includeIf("admin.layout.aside.main-item" ,["href"=>"/admin/clients" , "title" => trans('language.show_clients') , "icon" => "menu-icon fas fa-users-cog" ])
            </li>


            <li class="menu-item @if(strpos(url()->current(), "admin/roles" )) menu-item-active @endif  "
                aria-haspopup="true"
                data-menu-toggle="hover">
                @includeIf("admin.layout.aside.main-item" ,["href"=>"/admin/roles" , "title" => trans('language.roles') , "icon" => "menu-icon fas fa-user-friends" ])
            </li>

            <li class="menu-item @if(strpos(url()->current(), "admin/permission-categories" )) menu-item-active @endif  "
                aria-haspopup="true"
                data-menu-toggle="hover">
                @includeIf("admin.layout.aside.main-item" ,["href"=>"/admin/permission-categories" , "title" => trans('language.permission-categories') , "icon" => "menu-icon fas fa-clipboard-list" ])
            </li>

            <li class="menu-item @if(strpos(url()->current(), "admin/permissions" )) menu-item-active @endif  "
                aria-haspopup="true"
                data-menu-toggle="hover">
                @includeIf("admin.layout.aside.main-item" ,["href"=>"/admin/permissions" , "title" => trans('language.permissions') , "icon" => "menu-icon fas fa-tasks" ])
            </li>


        </ul>
    </div>
</li>


<li class="menu-item menu-item-submenu @if(strpos(url()->current(), "/categories" )) menu-item-active menu-item-open  @endif "
    aria-haspopup="true" data-menu-toggle="hover">
    <a href="javascript:;" class="menu-link menu-toggle">
        <span class="menu-icon svg-icon svg-icon-primary svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\keen\theme\demo5\dist/../src/media/svg/icons\Home\Commode2.svg--><svg
                    xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <rect x="0" y="0" width="24" height="24"/>
                <path d="M5.5,2 L18.5,2 C19.3284271,2 20,2.67157288 20,3.5 L20,6.5 C20,7.32842712 19.3284271,8 18.5,8 L5.5,8 C4.67157288,8 4,7.32842712 4,6.5 L4,3.5 C4,2.67157288 4.67157288,2 5.5,2 Z M11,4 C10.4477153,4 10,4.44771525 10,5 C10,5.55228475 10.4477153,6 11,6 L13,6 C13.5522847,6 14,5.55228475 14,5 C14,4.44771525 13.5522847,4 13,4 L11,4 Z"
                      fill="#000000" opacity="0.3"/>
                <path d="M5.5,9 L18.5,9 C19.3284271,9 20,9.67157288 20,10.5 L20,13.5 C20,14.3284271 19.3284271,15 18.5,15 L5.5,15 C4.67157288,15 4,14.3284271 4,13.5 L4,10.5 C4,9.67157288 4.67157288,9 5.5,9 Z M11,11 C10.4477153,11 10,11.4477153 10,12 C10,12.5522847 10.4477153,13 11,13 L13,13 C13.5522847,13 14,12.5522847 14,12 C14,11.4477153 13.5522847,11 13,11 L11,11 Z M5.5,16 L18.5,16 C19.3284271,16 20,16.6715729 20,17.5 L20,20.5 C20,21.3284271 19.3284271,22 18.5,22 L5.5,22 C4.67157288,22 4,21.3284271 4,20.5 L4,17.5 C4,16.6715729 4.67157288,16 5.5,16 Z M11,18 C10.4477153,18 10,18.4477153 10,19 C10,19.5522847 10.4477153,20 11,20 L13,20 C13.5522847,20 14,19.5522847 14,19 C14,18.4477153 13.5522847,18 13,18 L11,18 Z"
                      fill="#000000"/>
            </g>
        </svg><!--end::Svg Icon--></span>

        <span class="menu-text">{{__("language.categories")}}</span>
        <em class="menu-arrow"></em>
    </a>
    <div class="menu-submenu">
        <em class="menu-arrow"></em>
        <ul class="menu-subnav">

            <li class="menu-item" aria-haspopup="true"
                data-menu-toggle="hover">
                @includeIf("admin.layout.aside.main-item" ,["href"=>"/admin/categories/create" , "title" => trans('language.add_category') , "icon" => "menu-icon far fa-plus-square" ])
            </li>

            <li class="menu-item " aria-haspopup="true"
                data-menu-toggle="hover">
                @includeIf("admin.layout.aside.main-item" ,["href"=>"/admin/categories" , "title" => trans('language.show_categories') , "icon" => "menu-icon fas fa-cogs" ])
            </li>
        </ul>
    </div>
</li>


<li class="menu-item menu-item-submenu @if(strpos(url()->current(), "/products" ) || strpos(url()->current(), "/ProductProperties" )) menu-item-active menu-item-open  @endif "
    aria-haspopup="true" data-menu-toggle="hover">
    <a href="javascript:;" class="menu-link menu-toggle">
        <span class="menu-icon svg-icon svg-icon-primary svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\keen\theme\demo5\dist/../src/media/svg/icons\Shopping\Box3.svg--><svg
                    xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <rect x="0" y="0" width="24" height="24"/>
                <path d="M20.4061385,6.73606154 C20.7672665,6.89656288 21,7.25468437 21,7.64987309 L21,16.4115967 C21,16.7747638 20.8031081,17.1093844 20.4856429,17.2857539 L12.4856429,21.7301984 C12.1836204,21.8979887 11.8163796,21.8979887 11.5143571,21.7301984 L3.51435707,17.2857539 C3.19689188,17.1093844 3,16.7747638 3,16.4115967 L3,7.64987309 C3,7.25468437 3.23273352,6.89656288 3.59386153,6.73606154 L11.5938615,3.18050598 C11.8524269,3.06558805 12.1475731,3.06558805 12.4061385,3.18050598 L20.4061385,6.73606154 Z"
                      fill="#000000" opacity="0.3"/>
                <polygon fill="#000000"
                         points="14.9671522 4.22441676 7.5999999 8.31727912 7.5999999 12.9056825 9.5999999 13.9056825 9.5999999 9.49408582 17.25507 5.24126912"/>
            </g>
        </svg><!--end::Svg Icon--></span>

        <span class="menu-text">{{__("language.show_products")}}</span>
        <em class="menu-arrow"></em>
    </a>
    <div class="menu-submenu">
        <em class="menu-arrow"></em>
        <ul class="menu-subnav">

            <li class="menu-item" aria-haspopup="true"
                data-menu-toggle="hover">
                @includeIf("admin.layout.aside.main-item" ,["href"=>"/admin/products/create" , "title" => trans('language.add_product') , "icon" => "menu-icon fas fa-cart-plus" ])
            </li>


            <li class="menu-item @if(strpos(url()->current(), "/products" )) menu-item-active @endif  "
                aria-haspopup="true"
                data-menu-toggle="hover">
                @includeIf("admin.layout.aside.main-item" ,["href"=>"/admin/products" , "title" => trans('language.products') , "icon" => "menu-icon fas fa-edit" ])
            </li>

            <li class="menu-item @if(strpos(url()->current(), "/low-quantity-products" )) menu-item-active @endif  "
                aria-haspopup="true"
                data-menu-toggle="hover">
                @includeIf("admin.layout.aside.main-item" ,["href"=>"/admin/low-quantity-products" , "title" => trans('language.low-quantity-products') , "icon" => "menu-icon fas fa-edit" ])
            </li>


        </ul>
    </div>
</li>


