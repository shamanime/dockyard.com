calcParallax = (height, speedratio, scrollposition) ->
  (height) - (scrollposition / speedratio)
$ ->
  waveScroller = ->
    posY = (if (document.documentElement.scrollTop) then document.documentElement.scrollTop else window.pageYOffset)
    tide = document.getElementById("tide")
    tideparallax = calcParallax(550, .5, posY)
    new_pos = posY - 600
    tide.style.backgroundPosition = new_pos + "px " + tideparallax + "px"

  window.onscroll = waveScroller
  waveScroller()