$(function() {
  $('nav ul').localScroll({margin: true});
//  $('body > header > section').append('<div class="anchor"></div>');

  // Only hide if javascript is enabled
  $('ul.hidden-info-list').parent().find('section').hide();
  $('ul.hidden-info-list li a').click(function () {
    var that = $(this),
        visibleSection = that.parents('article').find('section:visible'),
        current = that.parents('ul').find('.current');

    debugger;
    that.parents('article').find('section').hide();
    that.parents('ul').find('.current').removeClass('current');

    if (this !== current[0]) {
      $(convertTextToId(this.text)).show();
      that.addClass('current');
    }

    return false;
  });
});

function convertTextToId(text) {
  return '#' + text.toLowerCase().replace(/\s/g, '-');
}

