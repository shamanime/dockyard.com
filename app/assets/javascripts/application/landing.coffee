$ ->
  window.onscroll = ->
    speed = .55
    $('#tide').css
      backgroundPosition: (window.scrollY / (speed * 2.5)) + "px " + (-window.scrollY / speed) + "px"