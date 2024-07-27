@extends('admin.layout.forms.add.index')
@section('action' , "clients")
@section('nav')
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{url("admin/")}}">  {{trans('language.home')}}</a></li>
        <li class="breadcrumb-item"><a href="{{url("admin/clients")}}">  {{trans('language.clients')}}</a></li>
        <li class="breadcrumb-item active" aria-current="page">{{trans('language.add')}}</li>
    </ol>
@endsection
@section('root' , "clients")
@section('page-title',trans('language.clients'))
@section('form-groups')

     @includeIf('admin.components.form.add.text', ['icon' => 'fa fa-user','label' => trans('language.name'),'name'=>'name', 'placeholder'=>trans('language.name' ),'valid'=>trans('language.vaildation')])
    @includeIf('admin.components.form.add.text', ['icon' => 'fa fa-user','label' => trans('language.email'),'name'=>'email', 'placeholder'=>trans('language.email' ),'valid'=>trans('language.vaildation')])
    @includeIf('admin.components.form.add.text', ['icon' => 'fa fa-user','label' => trans('language.mobile'),'name'=>'mobile', 'placeholder'=>trans('language.mobile' ),'valid'=>trans('language.vaildation')])
    @includeIf('admin.components.form.add.password', ['icon' => 'fa fa-user','label' => trans('language.password'),'name'=>'password', 'placeholder'=>trans('language.password' ),'valid'=>trans('language.vaildation')])


     <div class="form-group">
         <label class="required">{{ trans('language.roles') }}</label>
         <div>
             <select required class="form-control select2" multiple name="roles[]">
                 @foreach(\App\Models\Role::all() as $role)
                     <option value="{{ $role->id }}">
                         {{ $role->title }}
                     </option>
                 @endforeach
             </select>
         </div>
     </div>

@endsection
@section('submit-button-title' , trans('language.add'))
