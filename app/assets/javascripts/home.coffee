$ ->

  $('body>header nav ul, body>footer ul').localScroll({margin: true})

  # Only hide if javascript is enabled
  $('section.sub article:not(:first-child)').hide()
  # $('#what section article h2').hide()

  $('ul.hidden-info-list li a').click(->
    that = $(@)
    current = that.parents('ul').find('.current')
    target = $(convertTextToId(@.text))

    if current[0] == undefined
      target.slideDown();
      that.addClass('current');
    else if @ != current[0]
      that.parents('nav').siblings().find('article').hide()
      target.show()
      that.parents('ul').find('.current').removeClass('current')
      that.addClass('current')
    else if @ == current[0]
      target.slideUp()
      that.removeClass('current')

    return false;
  )

  convertTextToId = (text) ->
    return '#' + text.toLowerCase().replace(/\s/g, '-');

