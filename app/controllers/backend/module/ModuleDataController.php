<?php

class ModuleDataController extends BaseController {

      protected $layout = 'backend.layouts.default';      
      private $_moduleName = "Module";
      private $_routeModule ="backend/module-package/";
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
    public function getView($idmod,$idcontent){
        $infoMod = Modules::where('id','=',$idmod)->first();       
        $this->layout->page = $this->_moduleName.' - '.$infoMod->name; 
        $language = Language::where('status','=','publish')->orderBy('name','asc')->get();
        $getModData = ModuleData::where('id','=',$idcontent)->first();
        /*show list image*/
        $listImg = null;
        $listFile = null;
        if(Uploads::where('modData_id','=',$idcontent)->where('type_file','=','image')->count()>0)
        {
        $listImg = Uploads::where('modData_id','=',$idcontent)->where('type_file','=','image')->get();
        }
         if(Uploads::where('modData_id','=',$idcontent)->where('type_file','=','file')->count()>0)
        {
        $listFile = Uploads::where('modData_id','=',$idcontent)->where('type_file','=','file')->get();
        }
        
        $this->layout->content = View::make('backend.module.content.view')
                ->with('module_data',$getModData)
                ->with('infoMod',$infoMod)
                ->with('language',$language)
                ->with('listImg',$listImg)
                ->with('listFile',$listFile);
    }
        
    public function getAdd($id) {
        $infoMod = Modules::where('id','=',$id)->first();   
        $this->layout->page = $this->_moduleName;        

        function listDrop($parent_id,$span=' ')
        {  
            $str="";
            $Category = Categories::all(); 
            foreach($Category as $list)
            {
                if($list->parent == $parent_id)
                {                    
                   $str.= "<div class='checkbox'><input type='checkbox' value='".$list->id."' name='category_id[]' >".$span.$list->name.'</div>'; 
                   $str.=listDrop($list->id,'&nbsp -');                
                }
            }
           return $str;
        }

        $categories = Categories::where('status','=','publish')->orderBy('parent','asc')->get();             
    
        $language = Language::where('status','=','publish')->orderBy('name','asc')->get();
        
        $this->layout->content = View::make('backend.module.content.add')
                 ->with('infoMod',$infoMod)
                 ->with('language',$language)
                 ->with('categories',listDrop(0));
        }    
    public function postAdd($id) {  
        $validation = Validator::make(                
                Input::all()
                ,
                array(
                'title'=> 'required',                
                'order'=>'numeric',
                'lang_id'=>'required',
                )                
         );
        
        if($validation->passes())
        {

          /*validation image*/   
         $uploadImage = Input::file('image'); 
                /*validation file*/
               foreach($uploadImage as $img) :   

                 $validatorImage = Validator::make(            
                    array(
                        'image'=>$img
                    ),
                    array(
                        'image'=> 'mimes:jpeg,bmp,png,gif',
                      // 'image'=>'mimes:png,gif,jpg,jpge,bmp',
                    )
                     );        
                    if ($validatorImage->fails())
                    {
                        Session::flash('msg_flash',  CommonHelper::printErrors($validatorImage->messages()));
                         return Redirect::back()->withInput();    
                    } 
                 endforeach;  

            
            /*validation file*/   
         $uploadFile = Input::file('file'); 
                /*validation file*/
               foreach($uploadFile as $file) :   

                 $validatorFile = Validator::make(            
                    array(
                        'file'=>$file//->getClientOriginalName()
                    ),
                    array(
                       // 'fileImage'=> 'mimes:jpeg,bmp,png'
                       'file'=>'mimes:pdf,doc,docx,xls,xlsx',
                    )
                     );        
                    if ($validatorFile->fails())
                    {
                        Session::flash('msg_flash',  CommonHelper::printErrors($validatorFile->messages()));
                         return Redirect::back()->withInput();    
                    } 
                 endforeach;  
                       
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

            /* save category 1-n */
            if(Input::get('category_id') !=''){
                foreach(Input::get('category_id') as $category_id=>$value)
                {
                    $CA= new CategoriesModuleData;    
                    $CA->moduleData_id = $mod->id;
                    $CA->categories_id = $value;                              
                    $CA->save();
                }
            }

        /*add to table uploads*/
        /*upload image*/           
            if(CommonHelper::check_files_empty($uploadImage))
            {              
              $Path = 'public/asset/share/uploads/images';
              $Image= new ImagesController();
              //type_content   article_id and modData_id
              $Image->storeMulti($uploadImage, $Path,$mod->id,'modData_id','image');            
            } 
        /*upload file document*/                   
            $uploadFile = Input::file('file'); 
            if(CommonHelper::check_files_empty($uploadFile))
            {               
              $Path = 'public/asset/share/uploads/document';
              $Image= new ImagesController();
              //type_content   article_id and modData_id
              $Image->storeMulti($uploadFile, $Path,$mod->id,'modData_id','file');            
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


        $category = DB::table('categories_moduleData')
            ->join('categories', 'categories_moduleData.categories_id', '=', 'categories.id')
            ->where('categories_moduleData.moduleData_id','=',$getModData->id)    
            ->select(DB::raw('categories.id,categories.name'))->get(); 
        $categories = Categories::where('status','=','publish')->get();  

        /*show list image*/
        $listImg = null;
        $listFile = null;
        if(Uploads::where('modData_id','=',$idcontent)->where('type_file','=','image')->count()>0)
        {
        $listImg = Uploads::where('modData_id','=',$idcontent)->where('type_file','=','image')->get();
        }
         if(Uploads::where('modData_id','=',$idcontent)->where('type_file','=','file')->count()>0)
        {
        $listFile = Uploads::where('modData_id','=',$idcontent)->where('type_file','=','file')->get();
        }
        
        $this->layout->content = View::make('backend.module.content.update')
                ->with('module_data',$getModData)
                ->with('infoMod',$infoMod)
                ->with('language',$language)
                ->with('listImg',$listImg)
                ->with('listFile',$listFile)
                ->with('category',$category)
                ->with('categories',$categories);
    }    
    public function postUpdate($idmod,$idcontent) {       
        $validation = Validator::make(                
                Input::all(),
                array(
                'title'=> 'required',
                'order'=>'numeric',
                'lang_id'=>'required',
                )                
         );        
        if($validation->passes())
        {
           /*validation image*/   
            $uploadImage = Input::file('image'); 
                /*validation file*/
               foreach($uploadImage as $img) :   

                 $validatorImage = Validator::make(            
                    array(
                        'image'=>$img
                    ),
                    array(
                        'image'=> 'mimes:jpeg,bmp,png,gif',
                      // 'image'=>'mimes:png,gif,jpg,jpge,bmp',
                    )
                     );        
                    if ($validatorImage->fails())
                    {
                        Session::flash('msg_flash',  CommonHelper::printErrors($validatorImage->messages()));
                         return Redirect::back()->withInput();    
                    } 
                 endforeach;  
            /* end validation image*/     
            
            /*validation file*/   
             $uploadFile = Input::file('file'); 
                /*validation file*/
               foreach($uploadFile as $file) :   

                 $validatorFile = Validator::make(            
                    array(
                        'file'=>$file//->getClientOriginalName()
                    ),
                    array(
                       // 'fileImage'=> 'mimes:jpeg,bmp,png'
                       'file'=>'mimes:pdf,doc,docx,xls,xlsx',
                    )
                     );        
                    if ($validatorFile->fails())
                    {
                        Session::flash('msg_flash',  CommonHelper::printErrors($validatorFile->messages()));
                         return Redirect::back()->withInput();    
                    } 
                 endforeach; 
             /* end validation file*/       

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
            /*update category*/
            /* save category 1-n */
            if(Input::get('category_id') !=''){

                CategoriesModuleData::where('moduleData_id','=',$mod->id)->delete();

                foreach(Input::get('category_id') as $category_id=>$value)
                {                    
                    $CA= new CategoriesModuleData;    
                    $CA->moduleData_id = $mod->id;
                    $CA->categories_id = $value;                              
                    $CA->save();
                }
            }else{
                CategoriesModuleData::where('moduleData_id','=',$mod->id)->delete();
            }


            /*upload img*/
            $uploadImg = Input::file('image');
            $test =  CommonHelper::check_files_empty($uploadImg);
            if(!empty($test))
            {
              Uploads::where('modData_id','=',$idcontent)->where("type_file","=","image")->delete();    
              $Path = 'public/asset/share/uploads/images';
              $Image= new ImagesController();
              //type_content   article_id and modData_id   type_file is image,file
               $Image->storeMulti($uploadImg, $Path,$mod->id,'modData_id','image');         
            }
             /*update file document*/                   
            $uploadFile = Input::file('file'); 
            $test1 = CommonHelper::check_files_empty($uploadFile);
            if(!empty($test1))
            {
              Uploads::where('modData_id','=',$idcontent)->where("type_file","=","file")->delete();      
              $Path = 'public/asset/share/uploads/document';
              $Image= new ImagesController();
              //type_content   article_id and modData_id
              $Image->storeMulti($uploadFile, $Path,$mod->id,'modData_id','file');            
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