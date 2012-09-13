$ ->
  $(".slides").each ->
    p = @parentNode
    $(this).cycle
      fx: "fade"
      speed: "slow"
      timeout: 0
      prev: $(".prev", p)
      next: $(".next", p)