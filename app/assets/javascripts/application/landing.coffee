$ ->
  window.onscroll = ->
    speed = .525
    $('#tide').css
      backgroundPosition: (window.scrollY / (speed * 2.5)) + "px " + (-window.scrollY / speed) + "px"