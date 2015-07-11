$(document).ready -> 



  $(".slick").slick
    arrows: false
    dots: true
    autoplay: true
    autoplaySpeed: 6000


  el = $('.slick .item')[1]
  $(el).find('.background').addClass('visible')

  # $('.slick').on 'beforeChange', (event, slick, currentSlide, nextSlide)->

  #   $('.background').addClass 'visible'


  $('.slick').on 'afterChange', (event, slick, currentSlide) ->
    $('.background').removeClass('visible')
    $('.slick-active .background').addClass('visible')
    
  $.stellar({
    horizontalScrolling:false
    })

  $('.more').click ->
    $('.invisible').addClass('visible-more')