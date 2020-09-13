$(document).on("turbolinks:load", function(){

  $(function(){
    $(window).load(function(){
      $('.FadeIn').each(function(i){
          $(this).delay(i * 400).css({visibility:'visible',opacity:'0'}).animate({opacity:'1'},1000);
      });
    });
  });

});