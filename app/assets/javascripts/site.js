var refresh_rating = function() {
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
};


$(document).on('turbolinks:load ajaxSuccess', function(){
  refresh_rating();

  $('#img-zoom').elevateZoom();
});
