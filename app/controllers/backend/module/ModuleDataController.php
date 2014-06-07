<?php

class ModuleDataController extends BaseController {

      protected $layout = 'backend.layouts.default';      
      private $_moduleName = "Module";
      private $_routeModule ="backend/module/";
      public function __construct() {
     }  
    /*
      |--------------------------------------------------------------------------
      | Categories Controller
      |--------------------------------------------------------------------------
      |
      | You may wish to use controllers instead of, or in addition to, Closure
      | based routes. That's great! Here is an example controller method to
      | get you started. To route to this controller, just add the route:
      |
      |	Route::get('backend/', 'CategoriesController@index');
      |
     */

    public function index($id) {        
        $infoMod = Modules::where('id','=',$id)->first();       
        $this->layout->page = $this->_moduleName.' - '.$infoMod->name;           
        $module_data= ModuleData::where('module_id','=',$id)->orderBy('id','desc')->paginate(10); 
        $this->layout->content = View::make('backend.module.content.index')
                ->with('infoMod',$infoMod)
                ->with('module_data',$module_data);
                                    
        }
    public function getAdd($id) {
        $infoMod = Modules::where('id','=',$id)->first();   
        $this->layout->page = $this->_moduleName;                
    
        $language = Language::where('status','=','publish')->orderBy('name','asc')->get();
        
        $this->layout->content = View::make('backend.module.content.add')
                 ->with('infoMod',$infoMod)
                 ->with('language',$language);
        }    
    public function postAdd($id) {   
        $validation = Validator::make(                
                Input::all(),
                array(
                'title'=> 'required',
                //'image'=> 'image',
                'order'=>'numeric',
                'lang_id'=>'required',
                )                
         );
        
        if($validation->passes())
        {
        $mod = new ModuleData;
        $mod->title = Input::get('title');
        $mod->sumary = Input::get('sumary');        
        $mod->content = Input::get('content');
        $mod->lang_id = Input::get('lang_id');
        $mod->user_id = Session::get('userID');
        $mod->module_id = $id;
        $mod->icon = Input::get('icon');
        $mod->order = Input::get('order');
        $mod->link = Input::get('link');
        $mod->target = Input::get('target');
        $mod->status = Input::get('status');
        $mod->save();
        /*add to table uploads*/
        /*upload image*/
            $upload = Input::file('image'); 
            if(!empty(CommonHelper::check_files_empty($upload)))
            {
              $Path = 'public/asset/share/uploads/images';
              $Image= new ImagesController();
              //type_content   article_id and modData_id
              $Image->storeMulti(Input::file('image'), $Path,$mod->id,'modData_id');            
            }        
        Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.create_message')));  
        return Redirect::to($this->_routeModule.$id.'/content');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();        
    }        
    public function getUpdate($idmod,$idcontent) {        
        $infoMod = Modules::where('id','=',$idmod)->first();       
        $this->layout->page = $this->_moduleName.' - '.$infoMod->name; 
        $language = Language::where('status','=','publish')->orderBy('name','asc')->get();
        $getModData = ModuleData::where('id','=',$idcontent)->first();
        /*show list image*/
        $listImg = null;
        if(Uploads::where('modData_id','=',$idcontent)->count()>0)
        {
        $listImg = Uploads::where('modData_id','=',$idcontent)->get();
        }
        
        $this->layout->content = View::make('backend.module.content.update')
                ->with('module_data',$getModData)
                ->with('infoMod',$infoMod)
                ->with('language',$language)
                ->with('listImg',$listImg);
    }    
    public function postUpdate($idmod,$idcontent) {       
        $validation = Validator::make(                
                Input::all(),
                array(
                'title'=> 'required',
                //'image'=> 'image',
                'order'=>'numeric',
                'lang_id'=>'required',
                )                
         );        
        if($validation->passes())
        {
            $mod = ModuleData::find($idcontent);
            $mod->title = Input::get('title');
            $mod->sumary = Input::get('sumary');        
            $mod->content = Input::get('content');
            $mod->lang_id = Input::get('lang_id');
            $mod->user_id = Session::get('userID');
            $mod->module_id = $idmod;
            $mod->icon = Input::get('icon');
            $mod->order = Input::get('order');
            $mod->link = Input::get('link');
            $mod->target = Input::get('target');
            $mod->status = Input::get('status');
            $mod->update();
            /*upload img*/
            $upload = Input::file('image'); 
            if(!empty(CommonHelper::check_files_empty($upload)))
            {
              Uploads::where('modData_id','=',$idcontent)->delete();    
              $Path = 'public/asset/share/uploads/images';
              $Image= new ImagesController();
              //type_content   article_id and modData_id
              $Image->storeMulti(Input::file('image'), $Path,$mod->id,'modData_id');            
            }
            
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message')));  
            return Redirect::to($this->_routeModule.$idmod.'/content');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }
    
    public function getDelete($idmod,$idcontent) {
        
         /* $checkModule = DB::table('page_module')
            ->join('pages', 'page_module.page_id', '=', 'pages.id')
            ->join('module', 'page_module.module_id', '=', 'module.id')
            ->join('module_data', 'module.id', '=', 'module_data.module_id')
            ->where('module.id','=',$idmod)
            ->where('module_data.id','=',$idcontent)
            ->count();           
        
          if($checkModule > 0) {            
            Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.relationship_table',array('name'=>'Page'))));  
            return Redirect::back();   
          }
          else{*/
            $at= ModuleData::find($idcontent);
            $at->delete();            
            Uploads::where('modData_id','=',$idcontent)->delete();  
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.delete_message')));  
            return Redirect::to($this->_routeModule.$idmod.'/content');         
         // }
        
    }
    
     public function action($id)
     {
         $check = Input::get('checkID');
         if($check)
         {
         $getAction = Input::get('action');              
         switch($getAction)
         {
         case'publish':
             foreach($check as $key=>$value)
             {               
               $this->changeStatus($getAction,$value);               
             }  
             break;         
         case'unpublish':
              foreach($check as $key=>$value)
             {               
               $this->changeStatus($getAction,$value);               
             }  
             break;           
         case'delete':             
             foreach($check as $key=>$value)
             {               
               $this->getDelete($id,$value);               
             }                          
             break;
         default:             
             break;
         }
         return Redirect::to($this->_routeModule.$id.'/content');
         }
         
        else {             
          Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.nochoose_message')));   
          return Redirect::to($this->_routeModule.$id.'/content');
        }
     }
     
     public function changeStatus($status,$id)
     {         
         $ar = ModuleData::find($id);       
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     
     }

}