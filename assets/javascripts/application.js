$(document).ready(function() {
  var menuToggle = $('#js-mobile-menu').unbind();
  $('#js-navigation-menu').removeClass("show");

  menuToggle.on('click', function(e) {
    e.preventDefault();
    $('#js-navigation-menu').slideToggle(function(){
      if($('#js-navigation-menu').is(':hidden')) {
        $('#js-navigation-menu').removeAttr('style');
      }
    });
  });
});
(function() {
  $(document).ready(function() {
    var menuToggle;
    $.get("http://app.retomexico.org.mx" + '/api/v1/challenges.json?status=public').done(function(data) {
      riot.mount('challenges', {
        data: data.challenges
      });
    });
    $('dropdown-toggle').dropdown();
    $('.js-chosen').chosen();
    $('.js-datepicker').datepicker({
      dateFormat: 'yy-mm-dd'
    });
    $('[data-toggle="tooltip"]').tooltip();
    $(".challenge-index-title").fitText(1.4, {
      maxFontSize: "16px"
    });
    $("#challenge-prize-description").fitText(1.2, {
      maxFontSize: "17px"
    });
    $('#player-trigger').on('click', function() {
      $('#modal-player').modal('toggle');
      return false;
    });
    $('#modal-player').on('hidden.bs.modal', function() {
      return $("#modal-player iframe").attr("src", $("#modal-player iframe").attr("src"));
    });
    scroller('#active_challenges', '#challenges__container');
    menuToggle = $('#js-mobile-menu').unbind();
    $('#js-navigation-menu').removeClass('show');
    menuToggle.on('click', function(e) {
      e.preventDefault();
      $('#js-navigation-menu').slideToggle(function() {
        if ($('#js-navigation-menu').is(':hidden')) {
          $('#js-navigation-menu').removeAttr('style');
        }
      });
    });
  });

}).call(this);
