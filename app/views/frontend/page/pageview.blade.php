@section('title_bar')
  @foreach($mod as $incMod)
    @if($incMod->position == 'title_bar')
                @if($incMod->mod == 'mod_TitleBar')
                    @include('frontend.module.mod_TitleBar')
                @endif  
     @endif
  @endforeach
@stop
@section('header')
    @foreach($mod as $incMod)
    @if($incMod->position == 'header')
                @if($incMod->mod=='mod_Slider')
                    @include('frontend.module.mod_Slider')
                @endif  
     @endif
  @endforeach 
@stop
@section('top')
 @foreach($mod as $incMod)
            @if($incMod->position == 'top') 
                @if($incMod->mod=='mod_Feature')
                    @include('frontend.module.mod_Feature')
                @endif
                @if($incMod->mod=='mod_Maps')
                    @include('frontend.module.mod_Maps')
                @endif   
             @endif 
  @endforeach           
@stop
@section('content')
          @foreach( $mod as $incMod )          
            @if($incMod->position == 'content') 
                @if($incMod->mod == 'mod_TitleBar')
                    @include('frontend.module.mod_TitleBar')
                @endif                  
                @if($incMod->mod=='mod_Reason')
                    @include('frontend.module.mod_Reason')
                @endif
                @if($incMod->mod=='mod_About')
                    @include('frontend.module.mod_About')
                @endif
                @if($incMod->mod=='mod_Service')
                    @include('frontend.module.mod_Service')
                @endif
                @if($incMod->mod=='mod_Support')
                    @include('frontend.module.mod_Support')
                @endif
                 @if($incMod->mod=='mod_Contact')
                    @include('frontend.module.mod_Contact')
                @endif
             @endif
          @endforeach    
@stop

@section('bottom')
     @foreach($mod as $incMod)
            @if($incMod->position == 'bottom')  
                @if($incMod->mod=='mod_UserInterface')
                    @include('frontend.module.mod_UserInterface')
                @endif 
             @endif
    @endforeach
@stop