$(document).ready -> 



  $(".slick").slick
    arrows: false
    dots: true
    autoplay: true
    autoplaySpeed: 5000


  el = $('.slick .item')[1]
  $(el).find('.background').addClass('visible')

  # $('.slick').on 'beforeChange', (event, slick, currentSlide, nextSlide)->

  #   $('.background').addClass 'visible'


  $('.slick').on 'afterChange', (event, slick, currentSlide) ->
    $('.background').removeClass('visible')
    $('.slick-active .background').addClass('visible')
