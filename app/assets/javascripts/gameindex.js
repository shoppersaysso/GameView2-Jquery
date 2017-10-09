















$("form#sign_in_user").bind "ajax:success", (e, data, status, xhr) ->
    if data.success
      $('#sign_in').modal('hide')
      $('#sign_in_button').hide()
      $('#submit_comment').slideToggle(1000, "easeOutBack" )
    else
      alert('failure!')

























$(document).ready(function() {

})
