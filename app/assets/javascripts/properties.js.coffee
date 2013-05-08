$ ->
  $('button.toggle_search').click ->
    $('.filters').slideToggle ->
      toggle_button_text()

  toggle_button_text = () ->
    toggle_button = $('button.toggle_search')
    if $('.filters').css('display') == 'block'
      $(toggle_button).html('Hide Advanced Search Options')
    else
      $(toggle_button).html('Show Advanced Search Options')

  toggle_button_text()
