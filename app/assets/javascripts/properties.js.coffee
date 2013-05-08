$ ->
  $('button.toggle_search').click ->
    $('.filters').slideToggle()
    if $(@).html() == 'Show Advanced Search Options'
      $(@).html('Hide Advanced Search Options')
    else
      $(@).html('Show Advanced Search Options')

$ ->
  $('form.filters select').on 'change', -> $(@).closest('form').submit()
