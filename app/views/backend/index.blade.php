 @section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                                                  
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">  
                          
                        </div>

                    </div>
                    <div class="col-sm-2">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="btn-group btn-wigdet pull-right visible-lg">
                            <div class="btn">
                                Widget</div>
                            <button data-toggle="dropdown" class="btn dropdown-toggle" type="button">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul role="menu" class="dropdown-menu">                              
                            </ul>
                        </div>


                    </div>
                </div>
            </div>
@stop
 @section('breadcrumb')      
 <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">Home</a>
                </li>
                <li class="pull-right">
                </li>
            </ul>
 @stop
 
 @section('content')

 <div class="row">
 <div class="col-lg-12">
                                    {{Session::get('msg_flash_common')}}
                                   
                                    <h2 class="page-header">
                                        <i class="fa fa-globe"></i> RMP MARKETING
                                        <small class="pull-right"></small>
                                    </h2>
                                     </div>
                         
 </div>
</div>                
 @stop