$(document).on("turbolinks:load", function(){

  $(function() {
    $('.Toggle').click(function() {
      $(this).toggleClass('active');
      $('.menu').toggleClass('open');

      if ($(this).hasClass("active")) {  // ナビを開いた時
        $("body").addClass("is-fixed");  // 背景固定！
      } else {                              // ナビを閉じる時
        $("body").removeClass("is-fixed");     // 背景固定解除！
      }
      
    });
  });

});