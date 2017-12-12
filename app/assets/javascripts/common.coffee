$(document).on 'turbolinks:load', ->
  $(".drawer").drawer()
  
  $('.drawer-menu .lineup').on 'click', ->
    $(this).next().slideToggle()
    return false
  return false