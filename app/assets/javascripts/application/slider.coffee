$(document).ready ->
  $(".slider").css "overflow", "hidden"
  $(".slides").cycle
    fx: "fade"
    pause: 1
    prev: ".prev"
    next: ".next"

  $(".slider").hover (->
    $(".slider-nav").fadeIn()
  ), ->
    $(".slider-nav").fadeOut()