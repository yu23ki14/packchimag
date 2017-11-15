$(document).on 'turbolinks:load', ->
  fix_wecome_header_height = ->
    windowheight = $(window).height()
    $(".welcome-header").css("height", windowheight + "px")
  #fix_wecome_header_height()
  #$(window).resize ->
    #fix_wecome_header_height()
    
  fix_discription_position = ->
    if $(window).width() >= 767
      windowheight = $(window).height()
      position = windowheight/10*.5
      $("#discription").css("margin-top", position + "px")
      $("#discription").css("margin-bottom", position + "px")
  fix_discription_position()
  $(window).resize ->
    fix_discription_position()

    
  setInterval ->
    $('.flash').fadeOut(1000).fadeIn(1000)
  , 3000