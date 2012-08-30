window.Scroller = 
  Ids: {}
  Locations: {}
  LocationsNumber: []
  
  onScroll: ->
    window.Scroller.LocationsNumber = []
    for id of window.Scroller.Ids
      location = $("##{id}").offset().top - 135
      window.Scroller.Locations[location.toString()] = id 
      window.Scroller.LocationsNumber.push location
      
    window.Scroller.LocationsNumber.sort (a,b) ->
      a - b
    unless window.slowScroll
      for location in window.Scroller.LocationsNumber.reverse()
        if window.scrollY > location
          id = window.Scroller.Locations[location]
          $('.active').removeClass('active')
          window.Scroller.Ids[id].addClass('active')
          break

$ ->
  $nav = $('#fixed-nav')
  $links = $nav.find('a')
  first = true
  for link in $links
    elementName = link.hash.substring(1)
    window.Scroller.Ids[elementName] = $(link)
    if first
      $(link).addClass('active')
      first = false
    $(link).click (event) ->
      $target = $(event.currentTarget)
      $('.active').removeClass('active')
      $target.addClass 'active'
    
  $(window).scroll window.Scroller.onScroll
