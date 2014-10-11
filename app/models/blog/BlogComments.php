<?php

class BlogComments extends Eloquent {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'blog_comments';
    public $timestamps = true;
    protected $fillable = array('name', 'website', 'email', 'content', 'post_id');

}
