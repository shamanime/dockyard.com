$(function() {
  $('body>header nav ul, body>footer ul').localScroll({margin: true});
//  $('body > header > section').append('<div class="anchor"></div>');

  // Only hide if javascript is enabled
  $('ul.hidden-info-list').parents('nav').siblings('article').hide();
  $('ul.hidden-info-list li a').click(function () {
    var that = $(this),
        current = that.parents('ul').find('.current'),
        target = $(convertTextToId(this.text));

    if (current[0] == undefined) {
      target.slideDown();
      that.addClass('current');
    } else if (this !== current[0]) {
      that.parents('nav').siblings('article').hide();
      target.show();
      that.parents('ul').find('.current').removeClass('current');
      that.addClass('current');
    } else if (this === current[0]) {
      target.slideUp();
      that.removeClass('current');
    }

    return false;
  });
});

function convertTextToId(text) {
  return '#' + text.toLowerCase().replace(/\s/g, '-');
}

