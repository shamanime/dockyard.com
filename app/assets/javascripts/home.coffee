$ ->

  $('body>header nav ul, body>footer ul').localScroll({margin: true})

  # Only hide if javascript is enabled
  $('section.sub article:not(:first-child)').hide()
  # $('#what section article h2').hide()

  $('ul.hidden-info-list li a').click(->
    that = $(@)
    current = that.parents('ul').find('.current')
    target = $(convertTextToId(@.text))
    that.
      parents('nav').siblings().find('article').hide().
      end().end().end().
      parents('ul').find('.current').removeClass('current').
      end().end().
      addClass('current')
    target.show()
    return false;
  )

  convertTextToId = (text) ->
    return '#' + text.toLowerCase().replace(/\s/g, '-');

  konami = new Konami()
  konami.code = ->
    $('.socko').fadeToggle()
    video = $('<embed />', {
      src: 'http://youtube.com/v/n6hOBVaMGFI&autoplay=1',
      type: 'application/x-shockwave-flash',
      wmode: 'transparent',
      width: 0,
      height: 0
    })
    $('body').append(video);
  konami.load()
