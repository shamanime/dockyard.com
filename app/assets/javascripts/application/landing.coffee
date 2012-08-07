calcParallax = (height, speedratio, scrollposition) ->
  (height) - (scrollposition / speedratio)
$ ->
  tideScroller = ->
    posY = (if (document.documentElement.scrollTop) then document.documentElement.scrollTop else window.pageYOffset)
    tide = $(".tide")
    tideparallax = calcParallax(550, .5, posY)
    new_pos = posY - 600
    tide.css('background-position', "#{new_pos}px #{tideparallax}px")

  window.onscroll = tideScroller
  tideScroller()