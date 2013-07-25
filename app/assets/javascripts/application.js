// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(document).foundation();

$(document).ready(function(){

  // The `ajax` block below should get called when you make the request for generating the chart.
  var chart_display = $('#chart_display');

  var generate_chart = function(){
    chart_display.children().remove();
    $.ajax({
        dataType: "json",
        type: "get",
        url: "/exercises/chart/" + $('#activity_select').val()
  }).done(graph_activity);
  };

  // "/exercises/chart/some_activity" routes to the exercises#chart controller action. It returns JSON.

  // When the AJAX request is done, you will have that JSON response, which is passed to the 'done' callback function:

  var graph_activity = function(exercise_data){
    console.log(exercise_data);
    chart_display.append('<div id="exercise_charted" class="graph"></div>');

    Morris.Line({
      element: 'exercise_charted',
      data: exercise_data,
      xkey: 'completed',
      ykeys: ['value'],
      labels: ['value'],
      parseTime: false,
      lineColors: ['red'],
      hideHover: true
    });
  };



  $('#chart_button').on("click", generate_chart);



});