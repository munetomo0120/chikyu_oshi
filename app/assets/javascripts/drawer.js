$(document).on("turbolinks:load", function(){

  $(function() {
    $('.Toggle').click(function() {
      $(this).toggleClass('active');
      $('.menu').toggleClass('open');
    });
  });

});