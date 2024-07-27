<?php

namespace App\Http\Requests;

use App\Models\Permission;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class StorePermissionRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('permission_create');
    }

    public function rules()
    {
        return [
            'title' => 'string|required',
            'name_ar' => 'string|required',
            'name_en' => 'string',
            'record_state' => 'nullable',
            'category_id' => 'numeric|exists:permission_categories,id',
        ];
    }
}
