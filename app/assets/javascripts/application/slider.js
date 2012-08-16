$(document).ready(function() {
	$(".slider").css("overflow", "hidden");
	
	$(".slides").cycle({
		fx: 'fade',
		pause: 1,
		prev: '.prev',
		next: '.next'
	});
	
	$(".slider").hover(function() {
    	$(".slider-nav").fadeIn();
  	},
  		function() {
    	$(".slider-nav").fadeOut();
  	});
	
});