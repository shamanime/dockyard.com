$ ->
  $('#new_contact').bind 'ajax:success', ->
    $(@).find('input[type="submit"]').val("Thank you!").addClass('success').prop('disabled', true)