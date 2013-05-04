$ ->
  $('form.filters select').on 'change', -> $(@).closest('form').submit()
