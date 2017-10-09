//
//
// $("form#sign_in_user").bind "ajax:success", (e, data, status, xhr) ->
//     if data.success
//       $('#sign_in').modal('hide')
//       $('#sign_in_button').hide()
//       $('#submit_comment').slideToggle(1000, "easeOutBack" )
//     else
//       alert('failure!')
//
//
//
//
//
//
//
$(document).ready(function(){
    $("#showSignUp").click(function(){
        $("#login").addClass("hidden");
        $("#signup").removeClass("hidden");

    });
    $("#showLogIn").click(function(){
        $("#login").removeClass("hidden");
        $("#signup").addClass("hidden");

    });
});
