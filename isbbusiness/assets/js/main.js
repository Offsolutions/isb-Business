/*
	Template  Name: Businece Business HTML Template;
	Template URI: www.bootitems.com
	Description: This is a Business and Agency HTML Template;
	Author: Mushahid Islam
	Author URI: www.mushahid.me/tf/businece
    ersion: 1.0  
	NOTE:  This is js file contents all jQuery plugins.
*/
/*================================================
[  Table of contents  ]
================================================
	01. jQuery MeanMenu Active
	02. Welcome Slide
	03. About Carousel
	04. Isotope Filter
	05. Logo Carousel
	06. Testimonial Carousel
	07. Related Project
	08. Other Team Member
	9.  CounterUp
	10. Venobox Active
	11. Parallax
	12. ScrollUp
	13. Accordion active class
	14. Sticky Header
	15. Preloader

======================================
[ End table content ]
======================================*/

(function ($) {
 "use strict";
    jQuery(document).ready(function($){

		/* ==== 01. jQuery MeanMenu Active ==== */
		if ($('.business-nav').length) {
			jQuery('.business-nav').meanmenu();	
		}

		/* ==== 02. Welcome Slide ==== */
		if ($('#welcome-slide').length) {
			$('#welcome-slide').owlCarousel({
				autoplay:false,
				items:1,
				loop:true,
				autoplayHoverPause: false,
				smartSpeed: 500,
				margin:0,
				nav:true,
				navText:['<i class="icofont-double-left"></i>','<i class="icofont-double-right"></i>'],
				dots:true,
			}) 
		}

		/* ==== 03. About Carousel ==== */
		if ($('.about-img-wrap').length) {
			$('.about-img-wrap').owlCarousel({
				autoplay:false,
				items:1,
				loop:true,
				autoplayHoverPause: false,
				smartSpeed: 500,
				margin:0,
				nav:true,
				navText:['<i class="icofont-double-left"></i>','<i class="icofont-double-right"></i>'],
				dots:false,
			}) 
		}
		
		/* ==== 04. Isotope Filter ==== */
		$('.project-wrap').imagesLoaded(function() {
			$('.filter-menu').on('click', 'button', function() {
				var filterValue = $(this).attr('data-filter');
				$grid.isotope({
					filter: filterValue
				});
			});
			var $grid = $('.project-wrap').isotope({
				itemSelector: '.project-item',
				percentPosition: true,
				masonry: {
					columnWidth: '.project-item',
				}
			});
		});
		$('.filter-menu > button').on('click', function(event) {
			$(this).siblings('.active').removeClass('active');
			$(this).addClass('active');
			event.preventDefault();
		});

		/* ==== 05. Logo Carousel ==== */
		if ($('.branding-wrap').length) {
			$('.branding-wrap').owlCarousel({
				autoplay:5000,
				loop:true,
				autoplayHoverPause: false,
				smartSpeed: 500,
				nav:false,
				dots:false,
				margin:20,
				responsiveClass:true,
				responsive:{
					0:{
						items:2,
					},
					600:{
						items:3,
					},
					768:{
						items:5,
					},
					1000:{
						items:6,
					}
				}
			}) 
		}

		/* ==== 06. Testimonial Carousel ==== */
		if ($('.testimonial-wrap').length) {
			$('.testimonial-wrap').owlCarousel({
				autoplay:false,
				items:2,
				loop:true,
				autoplayHoverPause: false,
				smartSpeed: 500,
				margin:30,
				nav:false,
				dots:true,
				responsiveClass:true,
				responsive:{
					0:{
						items:1,
					},
					600:{
						items:1,
					},
					768:{
						items:1,
					},
					1000:{
						items:2,
					}
				}
			}) 
		}

		/* ==== 07. Related Project ==== */
		if ($('.related-project-wrap').length) {
			$('.related-project-wrap').owlCarousel({
				autoplay:false,
				items:4,
				loop:true,
				autoplayHoverPause: false,
				smartSpeed: 500,
				margin:30,
				nav:false,
				dots:false,
				responsiveClass:true,
				responsive:{
					0:{
						items:1,
					},
					600:{
						items:2,
					},
					768:{
						items:3,
					},
					1000:{
						items:4,
					}
				}
			}) 
		}

		/* ==== 08. Other Team Member ==== */
		if ($('.other-member-wrap').length) {
			$('.other-member-wrap').owlCarousel({
				autoplay:false,
				items:4,
				loop:true,
				autoplayHoverPause: false,
				smartSpeed: 500,
				margin:30,
				nav:false,
				dots:false,
				responsiveClass:true,
				responsive:{
					0:{
						items:1,
					},
					600:{
						items:2,
					},
					768:{
						items:3,
					},
					1000:{
						items:4,
					}
				}
			}) 
		}

		/* ==== 9. CounterUp ==== */	
		if ($('.counter').length) {
			$('.counter').counterUp({
				delay: 10,
				time: 2000
			});
		}
		/* ==== 10. Venobox Active ==== */	
		if ($('.venobox').length) {
			$('.venobox').venobox(); 
		}

		// ==== 11. Parallax  ====  
			$.stellar({
				horizontalScrolling:false,
				hideDistantElements: false,
				verticalOffset: 0,
				horizontalOffset: 0		
			});	
			
		/* ==== 12. ScrollUp ==== */
		$.scrollUp({
			scrollText: '<i class="icofont-swoosh-up"></i>',
			easingType: 'linear',
			scrollSpeed: 900,
			animation: 'fade'
		}); 
	
    });

// === 13. Accordion active class ===
	$('.card').on('click', function(event) {
		$(this).siblings('.active').removeClass('active');
		$(this).addClass('active');
		event.preventDefault();
	});

// ==== 14. Sticky Header ====
    $(function() {
        var header = $("#header"),
            yOffset = 0,
            triggerPoint = 100;
        $(window).on( 'scroll', function() {
            yOffset = $(window).scrollTop();

            if (yOffset >= triggerPoint) {
            	header.removeClass("animated cssanimation fadeIn");
                header.addClass("navbar-fixed-top sticky  cssanimation animated fadeInTop");
            } else {
                header.removeClass("navbar-fixed-top sticky cssanimation  animated fadeInTop");
                header.addClass("animated cssanimation fadeIn");
            }

        });
    });
    
	/* ==== 15. Preloader ==== */
	$(window).on('load',function(){
		jQuery(".preloader-wrap").fadeOut(500);
	});
	
})(jQuery); 