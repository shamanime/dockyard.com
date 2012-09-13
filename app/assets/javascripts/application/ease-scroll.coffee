jQuery(document).ready ($) ->
  $(".scroll").click (event) ->
    event.preventDefault()
    window.slowScroll = true
    $("html,body").animate
      scrollTop: $(@hash).offset().top
    , 500, ->
      window.slowScroll = false