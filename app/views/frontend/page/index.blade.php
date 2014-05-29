@section('header')
<div class="fullwidthbanner-container top-shadow">
    <div class="fullwidthbanner">
      <ul>
          @foreach($slider as $sl)
        <!-- Slide -->
				<li data-transition="fade" data-slotamount="1" data-masterspeed="1000">
				<!-- Main Image -->
				<img src="{{asset('asset/share/uploads/images/'.$sl->name)}}" alt="">
				<!-- End Main Image -->
				<!-- Captions -->
				<div class="tp-caption m-4em m-bold m-letter-spacing-1 m-uppercase m-text-white fade" data-x="40" data-y="110" data-speed="300" data-start="800" data-easing="easeOutQuint">
					<span>{{$sl->title}}</span>
				</div>
				<div class="tp-caption m-2-2em m-light m-text-white lfl" data-x="40" data-y="217" data-speed="400" data-start="1400" data-easing="easeOutExpo">
					<span>{{$sl->caption}}</span>
				</div>
				<div class="tp-caption lfl" data-x="40" data-y="265" data-speed="400" data-start="1600" data-easing="easeOutExpo">
					<a href="{{Request::root()}}/{{$sl->link}}" class="btn btn-uppercase colored">Readmore<i class="icon-caret-right" style="margin: 0 0 0 7px;"></i></a>
				</div>
				<!-- End captions -->
				</li>
	 <!-- End Slide  -->
         @endforeach
      </ul>
      
  </div>
 </div>
<div class="content gray-content">
    <div style="padding-bottom: 8px;" class="layout">
      <div class="row">
        <div class="row-item col-1_3">
          <!-- Icon Box -->
          <div class="icon-box medium">
            <i class="icon-css3 medium colored"></i>
            <h4><a class="dark-link" href="#">Duis Autem Vel Eum</a></h4>
            <p>
               Adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore
            </p>
          </div>
          <!-- End Icon Box -->
        </div>
        <div class="row-item col-1_3">
          <!-- Icon Box -->
          <div class="icon-box medium">
            <i class="icon-magic medium colored"></i>
            <h4><a class="dark-link" href="#">Qui Blandit Praesent</a></h4>
            <p>
               Vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil
            </p>
          </div>
          <!-- End Icon Box -->
        </div>
        <div class="row-item col-1_3">
          <!-- Icon Box -->
          <div class="icon-box medium">
            <i class="icon-bullhorn medium colored"></i>
            <h4><a class="dark-link" href="#">Tation Dipiscing Elit</a></h4>
            <p>
               Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium
            </p>
          </div>
          <!-- End Icon Box -->
        </div>
      </div>
    </div>
  </div>

@stop

@section('content')
<div class="content">
    <div class="layout">


<div class="b-promo margin-40">
  <a class="btn big colored" href="#">Request a demo today!</a>
  <h3>Ullam Corporis Suscipit Laboriosam</h3>
  Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt
</div>
      




<h3 class="lined margin-20">Need more reasons to choose CompleteRMP!</h3>
<div style="margin-bottom: 20px;">

   <div class="thumb col-1_4 security flip">
    <div class="thumb-wrapper">
      <img alt="" src="http://completermp.com/marketing/frontend/images/security.jpg">
      <div class="thumb-detail">
       <div class="padding_15">
          <h3>Security</h3>
          <p>Employees can access information instantly at any time and from any place that has access to the network.</p>
        </div>    
      </div>
    </div>
  </div>
  
  
  <div class="thumb col-1_4 reliability flip">
    <div class="thumb-wrapper">
      <img alt="" src="http://completermp.com/marketing/frontend/images/reliability.jpg">
      <div class="thumb-detail">
        <div class="padding_15">
          <h3>Reliability</h3>
          <p>Employees can access information instantly at any time and from any place that has access to the network.</p>
        </div>
      </div>
    </div>
  </div>    
  
  <div class="thumb col-1_4 accuracy flip">
    <div class="thumb-wrapper">
      <img alt="" src="http://completermp.com/marketing/frontend/images/accuracy.jpg">
      <div class="thumb-detail">
       <div class="padding_15">
          <h3>Accuracy</h3>
          <p>Employees can access information instantly at any time and from any place that has access to the network.</p>
        </div>
      </div>
    </div>
  </div>

  <div class="thumb col-1_4 efficiency flip">
    <div class="thumb-wrapper">
      <img alt="" src="http://completermp.com/marketing/frontend/images/efficiency.jpg">
      <div class="thumb-detail">
       <div class="padding_15">
          <h3>Efficiency</h3>
          <p>Employees can access information instantly at any time and from any place that has access to the network.</p>
        </div>   
      </div>
    </div>
  </div>  

  
  
  <div class="thumb col-1_4 productivity flip">
    <div class="thumb-wrapper">
      <img alt="" src="http://completermp.com/marketing/frontend/images/productivity.jpg">
      <div class="thumb-detail">
        <div class="padding_15">
          <h3>Productivity</h3>
          <p>Employees can access information instantly at any time and from any place that has access to the network.</p>
        </div> 
      </div>
    </div>
  </div>
  
 

  <div class="thumb col-1_4 convenience flip">
    <div class="thumb-wrapper">
      <img alt="" src="http://completermp.com/marketing/frontend/images/convenience.jpg">
      <div class="thumb-detail">
        <div class="padding_15">
          <h3>Convenience</h3>
          <p>Employees can access information instantly at any time and from any place that has access to the network.</p>
        </div>
      </div>
    </div>
  </div>  
  
  

  <div class="thumb col-1_4 extendable flip">
    <div class="thumb-wrapper">
      <img alt="" src="http://completermp.com/marketing/frontend/images/extendable.jpg">
      <div class="thumb-detail">
        <div class="padding_15">
          <h3>Extendable</h3>
          <p>Employees can access information instantly at any time and from any place that has access to the network.</p>
        </div>       
      </div>
    </div>
  </div>

  <div class="thumb col-1_4 simplicity flip">
    <div class="thumb-wrapper">
      <img alt="" src="http://completermp.com/marketing/frontend/images/simplicity.jpg">
      <div class="thumb-detail">
        <div class="padding_15">
          <h3>Simplicity</h3>
          <p>Employees can access information instantly at any time and from any place that has access to the network.</p>
        </div>      
      </div>
    </div>
  </div>
  
  
  
  <br clear="all">
</div>  

      
      <h3 class="lined margin-20">Our Happy Clients</h3>
      <div style="margin-bottom: 10px;" class="b-clients">
        <div class="client tooltips">
          <div class="tooltips-data">
             ICEAT
          </div>
          <a href="#"><img alt="" src="http://completermp.com/marketing/frontend/img/clients/iceat.png"></a>
        </div>
        <div class="client tooltips">
          <div class="tooltips-data">
             QEHC
          </div>
          <a href="#"><img alt="" src="http://completermp.com/marketing/frontend/img/clients/qehc.png"></a>
        </div>
      </div>
      
    </div>
  </div>
@stop