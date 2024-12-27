(function($) {

    'use strict'; 

    new WOW().init();

        /*-----------------------------------------------------------------------------------*/
        /*  Mobile Menu
        /*-----------------------------------------------------------------------------------*/

        var slideRight = new Menu({
            wrapper: '#main-wrapper',
            type: 'slide-right',
            menuOpenerClass: '.slide-button',
            maskId: '#slide-overlay'
        });

        var slideRightBtn = document.querySelector('#slide-buttons');
      
        slideRightBtn.addEventListener('click', function(e) {
            e.preventDefault;
            slideRight.open();
        });

        $(".slide-menu-items li.has-sub").click(function () {
            $('.slide-menu-items li.has-sub ul').not($(this).children("ul").slideToggle()).hide();  
        });

})(jQuery); 