<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use Notifiable;


    protected $hidden = [
        'password', 'remember_token',
    ];


    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    protected $fillable = [
        'fire_base_token',
        'user_type_id',
        'user_verify',
        'email',
        'password',
        'mobile',
        'name',
        'record_state',
    ];


    protected static function boot()
    {
        parent::boot();
    }

    public function roles()
    {
        return $this->belongsToMany(Role::class);
    }


}
