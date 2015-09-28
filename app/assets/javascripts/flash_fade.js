$(function() {
   $('.flash-fade').delay(1000).fadeIn('normal', function() {
      $(this).delay(3000).fadeOut(1000);
   });
});
