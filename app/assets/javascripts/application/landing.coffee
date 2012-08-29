$ ->
  window.onscroll = ->
    speed = .525
    document.getElementById("tide").style.backgroundPosition = (window.scrollY / (speed * 2.5)) + "px " + (-window.scrollY / speed) + "px"