'use strict'

$(document).ready(function(){
    $("#showSignUp").click(function(){
        $("#login").addClass("hidden");
        $("#signup").removeClass("hidden");

    });
    $("#showLogIn").click(function(){
        $("#login").removeClass("hidden");
        $("#signup").addClass("hidden");

    });

// games
$(function() {
  $(".js-more").on("click", function() {
    var gameId = $(this.id).selector;
    $.getJSON("/games/" + gameId + "/details", function(data) {
        $("#game-" + gameid).html(data["details"]);
    });
  });
});

//reviews truncated
//
// $(function() {
//   $(".review-more").on("click", function() {
//     var reviewId = $(this.id).selector;
//     $.getJSON("/reviews/" + reviewId + "/content", function(data) {
//       // var contentText = "<p>" + content + "</p>";
//         $("#review-" + reviewId).html(data['content']);
//
//     });
//   });
// });
$(function () {
  $(".review-more").on('click', function() {
    var id = $(this.id).selector;
    $.getJSON("/reviews/" + id + "/content", function(data) {
      // Replace text of body-id div
      $("#body-" + id).html(data["content"]);
    });
  });
});

});
