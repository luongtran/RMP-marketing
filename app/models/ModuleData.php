<?php

class ModuleData extends Eloquent {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'module_data';

    public static function boot() {
        parent::boot();
        static::creating(function($module) {
            $module->order = 9999;
        });
    }

}
