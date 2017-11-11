$(document).on 'turbolinks:load', ->
  fix_wecome_header_height = ->
    windowheight = $(window).height()
    $(".welcome-header").css("height", windowheight + "px")
  fix_wecome_header_height()
  $(window).resize ->
    fix_wecome_header_height()
    
  fix_discription_position = ->
    if $(window).width() >= 767
      windowheight = $(window).height()
      position = windowheight/10*1.5
      $("#discription").css("margin-top", position + "px")
  fix_discription_position()
  $(window).resize ->
    fix_discription_position()
    
  fix_subscribe_button_position = ->
    if $(window).width() >= 767
      windowheight = $(window).height()
      position = windowheight/10*1.5
      $("#subscribebutton").css("margin-top", position + "px")
  fix_subscribe_button_position()
  $(window).resize ->
    fix_subscribe_button_position()