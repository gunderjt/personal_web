# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('.open-nav-menu').on 'click', (e) ->
    e.preventDefault
    $('.nav-menu').animate({left: "0px"}, 250);

  $('.close-nav-menu').on 'click', (e) ->
    e.preventDefault
    navMenuWidth = $('.nav-menu').width();
    $('.nav-menu').animate({left: -navMenuWidth}, 250);
# $(document).ready(function () {
#     $('.slideout-menu-toggle').on('click', function(event){
#       event.preventDefault();
#       // create menu variables
#       var slideoutMenu = $('.slideout-menu');
#       var slideoutMenuWidth = $('.slideout-menu').width();
      
#       // toggle open class
#       slideoutMenu.toggleClass("open");
      
#       // slide menu
#       if (slideoutMenu.hasClass("open")) {
#         slideoutMenu.animate({
#           left: "0px"
#         }); 
#       } else {
#         slideoutMenu.animate({
#           left: -slideoutMenuWidth
#         }, 250);  
#       }
#     });
# });