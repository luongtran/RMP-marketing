
@section('content')
  <div class="row">
      
            <div class="row-item col-1_4">
                <p>{{Session::get('msg_flash')}}</p>
                <form class="b-form" action="{{Request::root()}}/backend/article/update/{{$article->id}}" method="post">
							<div class="input-wrap m-full-width">
								<i class="icon-user"></i>
                                                                <input class="field-name" name="title" type="text" value="{{$article->title}}" required>
							</div>
                    
							<div class="textarea-wrap">
								<i class="icon-pencil"></i>
                                                                <textarea class="field-comments" name="content" placeholder="Content">
                                                                    {{$article->content}}
                                                                </textarea>
							</div>
							<input class="btn-submit btn colored" type="submit" value="Send">
						</form>
            </div>            
        </div>        
        
@stop