jQuery(document).ready ($) ->
  $(".scroll").click (event) ->
    event.preventDefault()
    $("html,body").animate
      scrollTop: $(@hash).offset().top
    , 500
