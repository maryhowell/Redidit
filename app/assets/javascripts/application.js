// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .


// $(function(){
//   $(".increment").click(function(){
//     var count = parseInt($("~ .count", this).text());
//
//     if($(this).hasClass("up")) {
//       var count = count + 1;
//
//        $("~ .count", this).text(count);
//     } else {
//       var count = count - 1;
//        $("~ .count", this).text(count);
//     }
//
//     $(this).parent().addClass("bump");
//
//     setTimeout(function(){
//       $(this).parent().removeClass("bump");
//     }, 400);
//   });
// });


var count = 0



$(document).ready(function() {

  var result = $(".result");

  $("#add").click(function() {


    console.log("Clicked Add")

    $("#new-counter p").text( (count += 1 ))

    if (count < 10){
      result.removeClass(".red");
    }
    else {
      result.addClass("red");
    }

  })

  $("#sub").click(function() {
    console.log("Clicked Subtract")

    $("#new-counter p").text( (count -= 1 ))

    if (count > 10){
      result.removeClass(".red");
    }
    else {
      result.addClass("red");
    }


  })

  $("#reset").click(function() {

    now = new Date();
    var date = now.toLocaleDateString();
    var time = now.toLocaleTimeString();

    var votes = $("<p>")
    var vote_count = votes.text()
    var item = $("<li class='record'>")
    item.append( $("<span>").text("Reset from " + vote_count + " at " + time + " on " +  date))

    $(".vote-list").prepend( item )

    console.log("Clicked Reset")
    var count = 0
    $("#new-counter p").text( count )

  })

  $("#clearlog").click(function(){
    $(".vote-list").empty();
  })



})
