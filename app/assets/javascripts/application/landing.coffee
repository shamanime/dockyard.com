$ ->
  window.onscroll = ->
    speed = .525
    document.getElementById("tide").style.backgroundPosition = (-window.scrollX / speed) + "px " + (-window.scrollY / speed) + "px"