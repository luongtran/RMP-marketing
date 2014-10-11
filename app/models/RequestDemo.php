<?php

class RequestDemo extends Eloquent {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'request_demo';
    public $timestamps = true;
    protected $fillable = array('name', 'company', 'email', 'subject', 'text');

}
