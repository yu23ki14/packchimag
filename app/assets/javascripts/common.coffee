$(document).on 'turbolinks:load', ->
  $(".alert").delay(1300).fadeOut("normal")
  $(".drawer").drawer()
  
  $('.drawer-menu .lineup').on 'click', ->
    $(this).next().slideToggle()
    return false
  return false