$(function(){
    // id="link-mark"の箇所(いいねボタン)をクリックしたら
    $('#link-mark').on('click', function(){
      // 非同期でlikes#createに処理を送信＋その時に店舗情報(shop_id)を渡す
      $.ajax({
        url: '/likes',
        type: 'POST',
        data: {bookshop_id: $(this).data('bookshop_id')}
      })
      // 処理が上手く行ったらボタンを切り替えて
      .done((data) => {
        if ($(this).text() === 'いいね！') {
          $(this).text('いいね！を取り消す').removeClass('btn-primary').addClass('btn-secondary');
        } else if ($(this).text() === 'いいね！を取り消す') {
          $(this).text('いいね！').removeClass('btn-secondary').addClass('btn-primary');
        }
      })
      // 処理が上手く行かなかったら失敗の旨を伝えるアラートを表示
      .fail((data) => {
        alert('いいね！に失敗しました');
      })
    });
  });
