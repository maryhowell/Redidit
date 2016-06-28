// $(document).ready(function() {
//
//   $("#add").click(function() {
//     var check = $("<i>").addClass("glyphicon").addClass("glyphicon glyphicon-triangle-top")
//
//     // $(this).closest("tr").removeClass("incomplete")
//   })
//
//   $("#sub").click(function() {
//     var check = $("<i>").addClass("glyphicon").addClass("glyphicon glyphicon-triangle-bottom")
//
//     // $(this).closest("tr").removeClass("incomplete")
//
//     $.ajax("/posts/" + post_id + "/finish.json", {
//       method: "PATCH"
//     })
//
//   })
//
//
//
// })

// $(this).closest("")







// var count = 0
//
//
//
// $(document).ready(function() {
//
//   var result = $(".result");
//
// resultColor = function( count, result ) {
//   if (count < 10){
//     result.removeClass("red");
//   }
//   else {
//     result.addClass("red");
//   }
// };
//
//
//   $("#add").click(function() {
//
//     console.log("Clicked Add")
//
//     $("#new-counter p").text( (count += 1 ))
//
//     resultColor( count, result );
//
//   })
//
//   $("#sub").click(function() {
//     console.log("Clicked Subtract")
//
//     $("#new-counter p").text( (count -= 1 ))
//
//     resultColor( count, result );
//
//   })
//
//   $("#reset").click(function() {
//
//     now = new Date();
//     var date = now.toLocaleDateString();
//     var time = now.toLocaleTimeString();
//
//     var votes = $("<p>")
//     var vote_count = votes.text()
//     var item = $("<li class='record'>")
//     item.append( $("<span>").text("Reset from " + vote_count + " at " + time + " on " +  date))
//
//     $(".vote-list").prepend( item )
//
//     console.log("Clicked Reset")
//     var count = 0
//     $("#new-counter p").text( count )
//
//   })
//
//   $("#clearlog").click(function(){
//     $(".vote-list").empty();
//   })
//
//
//
// })
