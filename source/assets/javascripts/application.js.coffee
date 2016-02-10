//= require_tree .

(document).ready ->
  $('dropdown-toggle').dropdown()
  $('.js-chosen').chosen()
  $('.js-datepicker').datepicker(dateFormat: 'yy-mm-dd')
  $('[data-toggle="tooltip"]').tooltip()
  $(".challenge-index-title").fitText 1.4, maxFontSize: "16px"
  $("#challenge-prize-description").fitText 1.2, maxFontSize: "17px"

  $('#player-trigger').on 'click', ->
    $('#modal-player').modal('toggle')
    false

  # Stop video when closing the modal
  $('#modal-player').on 'hidden.bs.modal', ->
    $("#modal-player iframe").attr("src", $("#modal-player iframe").attr("src"))

  # for the scroller to work on each element it has to be registered
  # scroll from source to destination
  scroller('#active_challenges', '#challenges__container') # source, destination

  menuToggle = $('#js-mobile-menu').unbind()
  $('#js-navigation-menu').removeClass 'show'
  menuToggle.on 'click', (e) ->
    e.preventDefault()
    $('#js-navigation-menu').slideToggle ->
      if $('#js-navigation-menu').is(':hidden')
        $('#js-navigation-menu').removeAttr 'style'
      return
    return
  return