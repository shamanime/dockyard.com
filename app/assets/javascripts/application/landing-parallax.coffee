$ ->
  window.onscroll = ->
    speed = .625
    $('#tide').css
      backgroundPosition: (window.scrollY / (speed * 2.5)) + "px " + (-window.scrollY / speed) + "px"