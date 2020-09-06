$(document).on("turbolinks:load", function(){
  // 入力時のイベント
  $('.ExplanationField').on('input', function () {
    // 文字数を取得する
    let cnt = $(this).val().length + "/255";
    // 現在の文字数を表示する
    $('.NowCnt').text(cnt);
  });

  // リロード時に初期文字列が入っていた時の対策
  $('.ExplanationField').trigger('input');

});