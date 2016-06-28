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


var count = 0

var getVotes = function(postId){
  $.ajax("/posts/" + postId + "/vote_count.json"), {
    success: function(data) {
      score = data.count

      displayVotes()
    },
    error: function () { alert("can't get vote count") }

  }
}

var displayVotes = function(){

  var votes = $(".result")

  if (count < 10){
    result.removeClass("red");
  }
  else {
    result.addClass("red");
  }

  votes.text( (score) )
  localStorage.score = score;
}


$(document).ready(function() {

  var result = $(".result");

  resultColor = function( count, result ) {
    if (count < 10){
      result.removeClass("red");
    }
    else {
      result.addClass("red");
    }
  };


  // upvotes

  $("#add").click(function(e) {
    e.preventDefault()
    var postId = $(this).data("post-id")

    $.ajax("/posts/" + postId + "/like.json",{
      method: "PUT",
      success: function(){  getVotes(postId) },
      error: function() { alert("no upvote") }

    })
    console.log("Clicked Add")
  })

  $("#new-counter p").text( (count += 1 ))




  // down votes

  $("#sub").click(function(e) {
    e.preventDefault()
    var postId = $(this).data("post-id")

    $.ajax("/posts/" + postId + "/dislike.json",{
      method: "PUT",
      success: function(){  getVotes(postId) },
      error: function() { alert("no downvote") }

    })
    console.log("Clicked Subtracted")
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
    count = 0
    $("#new-counter p").text( count )

  })

  $("#clearlog").click(function(){
    $(".vote-list").empty();
  })
})
