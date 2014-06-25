<?php

class BlogPosts extends Eloquent {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'blog_posts';
    public $timestamps = true;
    protected $fillable = array('title','content','sumary','status');
     
}