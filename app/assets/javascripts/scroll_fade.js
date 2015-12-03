var text = $(".content");

$(window).on("scroll", function(e) {
  var text = $(".content");
  text.css('mask-image', '-webkit-linear-gradient(top, rgba(0,0,0,0) ' +
  ($('body').scrollTop()+96) + 'px , rgba(0,0,0,1)' +
  ($('body').scrollTop()+128) + 'px)');
})
