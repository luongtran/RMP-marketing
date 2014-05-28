<?php 

$num = 1;

?>

@section('styles')
  <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="{{ Request::root() }}/assets/plugins/bootstrap-toastr/toastr.min.css" />
    <link href="{{ Request::root() }}/assets/css/pages/tasks.css" rel="stylesheet" type="text/css"/>
  <!-- END PAGE LEVEL STYLES -->
@stop



@section('content')

<div class="row">
  <div class="col-md-12">


  <div class="col-md-12">


    <hr class="small-margin-top">

  </div><!-- ./col-md-12 -->



  <div class="row">
    <div class="col-md-12">



      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

          <div class="dashboard-stat blue">
            <div class="visual">
              <i class="fa fa-group"></i>
            </div>
            <div class="details">
              <div class="number">
                {{ $client_count }}
              </div>
              <div class="desc">
                @if( $client_count == 1 )
                  Global Clients
                @else
                  Global Clients
                @endif
              </div>
            </div>
            <a class="more" href="{{ Request::root() }}/staff/recruitment/clients">
            View Clients <i class="m-icon-swapright m-icon-white"></i>
            </a>
          </div>

        </div><!-- ./col-md-3 -->

        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

          <div class="dashboard-stat purple">
            <div class="visual">
              <i class="fa fa-globe"></i>
            </div>
            <div class="details">
              <div class="number">
                {{ $recruiters_count }}
              </div>
              <div class="desc">
                @if( $recruiters_count == 1 )
                  Global Recruiter
                @else
                  Global Recruiters
                @endif
              </div>
            </div>
            <a class="more" href="{{ Request::root() }}/staff/recruitment/recruiters">
            View Recruiters <i class="m-icon-swapright m-icon-white"></i>
            </a>
          </div>

        </div><!-- ./col-md-3 -->



      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

  
              <div class="dashboard-stat green">
                <div class="visual">
                  <i class="fa fa-bar-chart-o"></i>
                </div>
                <div class="details">
                  <div class="number">
                    {{ $hired_count }}
                  </div>
                  <div class="desc">
                    Applicants Hired
                  </div>
                </div>
                <a class="more" href="{{ Request::root() }}/staff/recruitment/applicants/approved-applicants">
                View Applicant Statistics <i class="m-icon-swapright m-icon-white"></i>
                </a>
              </div>


        </div><!-- ./col-md-3 -->

        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        
              <div class="dashboard-stat yellow">
                <div class="visual">
                  <i class="fa fa fa-plane"></i>
                </div>
                <div class="details">
                  <div class="number">
                    {{ $arriving_today }}
                  </div>
                  <div class="desc">
                    <a style="color:#fff" href="{{ Request::root() }}/staff/recruitment/applicants/arrival-schedule">
                      @if( $arriving_today == 1 )
                         Arriving Today / Tomorrow
                      @else
                         Arriving Today / Tomorrow
                      @endif
                    </a>
                    
                  </div>
                </div>
                <a class="more" href="{{ Request::root() }}/staff/recruitment/applicants/complete-arrival-schedule">
                Complete Arrival Schedule <i class="m-icon-swapright m-icon-white"></i>
                </a>
              </div>

        </div><!-- ./col-md-3 -->



       
      </div><!-- ./col-md-12 -->
   </div><!-- ./row -->


  <div class="col-md-12">

    <hr class="small-margin-top">

  </div><!-- ./col-md-12 -->






<div class="row">
  <div class="col-md-12">

      <div class="col-md-12">

               
          <!-- BEGIN PORTLET-->
           <div><span>Applicant statistics over the past year ( Sept 2013 - Jan 2014 ).</span></div>
           <div><span>Moused Over: </span><span id="info2">Nothing</span></div>
           <div id="chart3" class="example-chart" style="height:375px;width:100%"></div>
          <!-- END PORTLET-->

      </div><!-- ./col-md-12 -->

  </div><!-- ./col-md-12 -->
</div><!-- ./row -->








  <div class="col-md-12">

    <hr class="margin-top">

  </div><!-- ./col-md-12 -->


<div class="row">
  <div class="col-md-12">

        <div class="col-md-6">

          <p>
              There 

                @if( $pending_submission == 1 )
                    
                  is 1 applicant 

                @else

                  are {{ $pending_submission }} applicants

                @endif

              due for submission.
            </p>

                <!-- BEGIN Portlet PORTLET-->
                <div class="portlet box grey">
                  <div class="portlet-title">
                    <div class="caption">
                     <i class="fa fa-user"></i> 5 Latest Pending Applicants 
                    </div>
                     <div class="tools">
                      <a href="javascript:;" class="collapse"></a>
                    </div>
                  </div>
                  <div class="portlet-body">
                    <div class="scroller" style="height:190px" data-rail-visible="1" data-handle-color="#a1b2bd">
                      

                      <table class="table">
                      <thead>
                      </thead>
                      <tbody>

                      @if( count( $pending_applicants ) != 0 )

                          @foreach( $pending_applicants as $applicant )
                          <tr>
                            <td>
                              <a href="{{ Request::root() }}/staff/recruitment/applicant/{{ $applicant->id }}">
                                @if( $applicant->profile_image_icon != '')
                                  <img class="border-2" src="{{ Request::root(). $applicant->profile_image_icon }}" />
                                @else
                                  <img class="border-2" src="{{ Request::root() }}/my_assets/img/small_logged_on_icon_black.png" width="35px">
                                @endif
                              </a> 
                            </td>
                            
                            <td style="vertical-align:middle;">
                              <p><a href="{{ Request::root() }}/staff/recruitment/applicant/{{ $applicant->id }}"> 
                                  
                                  {{ $applicant->full_name }} 
                                    (
                                    @if( $applicant->gender == 'man' ) 
                                      Male
                                    @else
                                      Female
                                    @endif
                                    )
                                </a> 
                                <br> {{ $applicant->nationality }} |  Added: {{ date("D, d M Y",strtotime( $applicant->added )) }} | Recruiter: {{ $applicant->recruiter_name }} 
                              </p> 
                            
                          </td>
                          </tr>
                          @endforeach

                      <tr>
                        <td class="align-right" colspan="2">
                          <a href="{{ Request::root() }}/staff/recruitment/applicants/pending">View all pending applicants</a>
                        </td>
                      </tr>    


                      @else

                      <tr>
                        <td colspan="2">
                          <p><em>There are no pending applicants</em></p>
                        </td>
                      </tr>

                      @endif



                      
                      </tbody>  
                      </table>

                    </div>
                  </div>
                </div>
                <!-- END Portlet PORTLET-->
              

        </div><!-- ./col-md-6 -->

        <div class="col-md-6">

          <p>

              There 

                @if( $open_adverts == 1 )
                    
                  is 1 open advert. 

                @else

                  are {{ $open_adverts }} open adverts.

                @endif

            </p>


              <!-- BEGIN Portlet PORTLET-->
                <div class="portlet box grey">
                  <div class="portlet-title">
                    <div class="caption">
                     <i class="fa fa-reorder"></i>7 latest Posted Vacancies 
                    </div>
                    <div class="tools">
                      <a href="javascript:;" class="collapse"></a>
                    </div>
                  </div>
                  <div class="portlet-body">
                    <div class="scroller" style="height:190px" data-rail-visible="1" data-handle-color="#a1b2bd">
                      

                      <table class="table">
                      <thead>
                      </thead>
                      <tbody>

                  
                      @foreach( $open_vancies as $vacancy )
                      <tr>
                        <td style="vertical-align:middle;">
                          Title: <a href="{{ Request::root() }}/staff/recruitment/adverts/{{ $vacancy->id }}">{{ $vacancy->advert_title }} ( {{ Carbon::createFromFormat("Y-m-d H:i:s",$vacancy->advertised_date )->diffForHumans() }} )</a> 
                          <p>                        
                              Client: {{ $vacancy->client_name }} |  Advertised: {{ date("D, d M Y",strtotime( $vacancy->advertised_date )) }}  | Applicants {{ $vacancy->applicants }}
                          </p> 
                        
                      </td>
                      </tr>
                      @endforeach
                      <tr>
                        <td class="align-right" >
                          <a href="{{ Request::root() }}/staff/recruitment/adverts">View all adverts</a>
                        </td>
                      </tr>
                      </tbody>  
                      </table>

                    </div>
                  </div>
                </div>
                <!-- END Portlet PORTLET-->

        </div><!-- ./col-md-6 -->

      </div><!-- ./col-md-12 -->
   </div><!-- ./row -->



<div class="row">
<div class="col-md-12">
        

          <div class="col-md-7">
          <div class="portlet box grey tasks-widget">
            <div class="portlet-title">
              <div class="caption">
                <i class="fa fa-tasks"></i>{{ $my_task_count = count($tasks) }} Pending 
                @if( $my_task_count == 1)
                  Task
                @else
                  Tasks
                @endif
              </div>
              
              <div class="actions">
                <div class="btn-group">
                  <a class="btn default btn-xs" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                  More <i class="fa fa-angle-down"></i>
                  </a>
                  <ul class="dropdown-menu pull-right">
                    <li>
                      <a href="#"><i class="fa fa-check"></i> Mark as complete</a>
                    </li>
                    </li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="portlet-body">
              <div class="task-content">
                <div class="scroller" style="height: 305px;" data-always-visible="1" data-rail-visible1="1">
                  <!-- START TASK LIST -->

                
                  <table class="table">
                    @foreach( $tasks as $task )
                    <tr>
                      <td>
                        
                        <div class="task-checkbox">
                          <input type="checkbox" class="liChild" value=""/>
                        </div>

                      </td>
                      <td>

                        <div class="task-title">
                        <span class="label label-sm label-success">
                          Company
                        </span>
                        </div>

                      </td>
                      <td>
                        
                        <div class="task-title">
                          <span class="task-title-sp">
                           {{ $task->task_description }}
                          </span>
                        </div>
                        
                      </td>
                      <td>
                        
                          <div class="task-config">
                          <div class="task-config-btn btn-group">
                            <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="fa fa-cog"></i> <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu pull-right">
                              <li>
                                <a href="#"><i class="fa fa-check"></i> Complete</a>
                              </li>
                              <li>
                                <a href="#"><i class="fa fa-pencil"></i> Edit</a>
                              </li>
                              <li>
                                <a href="#"><i class="fa fa-trash-o"></i> Cancel</a>
                              </li>
                            </ul>
                            </div>
                          </div>
                        
                      </td>
                    </tr>
                    @endforeach
                  </table>
                  
                  
                  <!-- END START TASK LIST -->
                </div>
              </div>

              <div class="task-footer">
                <span class="pull-right">
                  <a href="#">See All Tasks <i class="m-icon-swapright m-icon-gray"></i></a> &nbsp;
                </span>
              </div>
            </div>

          </div>
        </div><!-- ./col-md-12 -->






        {{ Former::open('shared/update-all-todos','POST') }}

        {{ Former::token() }}

        <div class="col-md-5">
          <div class="portlet box green tasks-widget">
            <div class="portlet-title">
              <div class="caption">
                <i class="fa fa-check"></i>Todo List ( {{ count( $todo ) }}  Items )
              </div>

              
              
              <div class="actions float-right">

                <div class="btn-group">
                  <a class="btn default btn-xs" href="#" data-toggle="dropdown" data-close-others="true">
                  Options <i class="fa fa-angle-down"></i>
                  </a>
                  <ul class="dropdown-menu pull-right">

                    <li>
                      <a href="{{ Request::root() }}/shared/add-todo-item" class="ajax-links"><i class="fa fa-plus"></i> Add item to list</a>
                    </li>
                    <li>
                      <button style="background:none;border:none;width:100%;text-align:left;" type="submit"><i class="fa fa-check"></i> Mark as complete</button>
                    </li>
                    
                  </ul>
                </div>
              </div>
            </div>

            <div class="portlet-body">
              <div class="task-content">
                <div class="scroller" style="height: 305px;" data-always-visible="1" data-rail-visible1="1">
                  <!-- START TASK LIST -->

                  

                  <ul class="task-list">
                    @foreach( $todo as $do )
                    <li>
                      <div class="task-checkbox">
                        <input type="checkbox" class="liChild" name="todo_ids[]" value="{{ $do->id }}"/>
                      </div>

                      <div class="task-title">

                        @if( $do->status_important == 1 )
                          <span class="label label-sm label-danger small-margin-right">
                            Very Urgent
                          </span>
                        @elseif( $do->status_important == 2 )
                          <span class="label label-sm label-warning small-margin-right">
                            Urgent
                          </span>
                        @elseif( $do->status_important == 3 )
                          <span class="label label-sm label-primary small-margin-right">
                            General
                          </span>
                        @endif

                        <span class="task-title-sp">
                         {{ $do->description }}
                        </span>
                        
                      </div>
                      <div class="task-config">
                        <div class="task-config-btn btn-group">
                          <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-close-others="true">
                          <i class="fa fa-cog"></i><i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu pull-right">
                  
                            
                            @if( $do->status_important != 1 )
                             <li>
                              <a href="{{ Request::root() }}/shared/chage-todo-status/{{ $do->id }}/1"><span class="btn-sm btn-danger">Change to Very Urgent</span></a>
                            </li>
                            @endif


                            @if( $do->status_important != 2 )
                              <li>
                              <a href="{{ Request::root() }}/shared/chage-todo-status/{{ $do->id }}/2"><span class="btn-sm btn-warning"> Change to Urgent</span></a>
                            </li>
                            @endif
                            

                            @if( $do->status_important != 3 )
                              <li>
                              <a href="{{ Request::root() }}/shared/chage-todo-status/{{ $do->id }}/3"><span class="btn-sm btn-primary"> Change to general</span></a>
                            </li>
                            @endif

                            <li>
                              <a href="{{ Request::root() }}/shared/delete-todo-item/{{ $do->id }}"><i class="fa fa-check"></i> Mark as complete</a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </li>
                    @endforeach
                  </ul>

                  
                  
                  <!-- END START TASK LIST -->
                </div>
              </div>

              <div class="task-footer">
                <span class="pull-right">
                  <a href="#">See All Tasks <i class="m-icon-swapright m-icon-gray"></i></a> &nbsp;
                </span>
              </div>
            </div>

            {{ Former::close() }}

          </div>
        </div><!-- ./col-md-12 -->





</div><!-- ./col-md-12 -->
</div><!-- ./row -->


  </div><!-- ./col-md-12 -->
</div><!-- ./row -->

@stop



@section('app_js')
    @parent
    UIToastr.init();
    Tasks.initDashboardWidget();

  
@stop




@section('plugins')

@stop


@section('scripts')

  {{ HTML::script('assets/plugins/bootstrap-toastr/toastr.min.js') }}  
  {{ HTML::script('assets/scripts/ui-toastr.js') }} 
  {{ HTML::script('assets/scripts/tasks.js') }}
   
<!-- Don't touch this! -->
<script src="{{ Request::root() }}/my_assets/plugins/jquery.jqplot.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="{{ Request::root() }}/my_assets/plugins/jqplot.categoryAxisRenderer.min.js"></script>
<script language="javascript" type="text/javascript" src="{{ Request::root() }}/my_assets/plugins/jqplot.barRenderer.min.js"></script>
<script type="text/javascript" src="{{ Request::root() }}/my_assets/plugins/jqplot.pointLabels.min.js"></script>








<!-- End Don't touch this! -->

@stop


@section('js')
    @parent


  @if( Task::overdue_tasks( ) != 0 )

      toastr.info("You have {{ Task::overdue_tasks( ); }} overdue tasks,<br>please <a href='{{ Request::root() }}/staff/my-tasks'>review them</a> .", "Overdue Tasks")

  @endif


 $(document).ready(function(){
    var males = [23, 6, 37, 10, 84];
    var females = [43, 45, 3, 72, 182];
    var ticks = ['September', 'October', 'November', 'December','January'];

     
    plot2 = $.jqplot('chart3', [males, females], {

    
        seriesColors:[ '#27a9e3','#852b99'],
        seriesDefaults: {
            renderer:$.jqplot.BarRenderer,
            pointLabels: { show: true }
        },
        
        axes: {
            xaxis: {
                renderer: $.jqplot.CategoryAxisRenderer,
                ticks: ticks
            }
        },

    });
 
    $('#chart3').bind('jqplotDataHighlight', 
        function (ev, seriesIndex, pointIndex, data) {

            var gender = ['Males','Females'];

            $('#info2').html( ticks[ data[0]-1 ] +', ' +data[1] + ' ' + gender[seriesIndex] );


        }
    );
         
    $('#chart3').bind('jqplotDataUnhighlight', 
        function (ev) {
            $('#info2').html('Nothing');
        }
    );
});


@stop

