<?php

class BaseController extends Controller {

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
        const DEFAULT_LOCALE = 'en'; 
         public function __construct() {
             $this->setLocale();
         }
	protected function setupLayout()
	{
		if ( ! is_null($this->layout))
		{
			$this->layout = View::make($this->layout);
		}
	}
       
        protected function setLocale() {
        $currentLocale = Session::get('current_locale', self::DEFAULT_LOCALE);
        App::setLocale($currentLocale);
        View::share('current_locale', $currentLocale);
    }
    
   
    

}