$ ->
  $(".slider").css "overflow", "hidden"
  $(".slides").each ->
    p = @parentNode
    $(this).cycle
      fx: "fade"
      pause: 1
      prev: $(".prev", p)
      next: $(".next", p)