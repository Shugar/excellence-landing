$(document).ready -> 

  $(".slick").slick
    arrows: false
    dots: true
    autoplay: true
    autoplaySpeed: 6000


  el = $('.slick .item')[1]
  $(el).find('.background').addClass('visible')


  $('.slick').on 'afterChange', (event, slick, currentSlide) ->
    $('.background').removeClass('visible')
    $('.slick-active .background').addClass('visible')


  $('.more').click ->
    $('.invisible').addClass('visible-more')

  $(".slick-2").slick
    arrows: true
    dots: false
    autoplay: true
    autoplaySpeed: 6000
    centerMode: true
    centerPadding: '0px'
    slidesToShow: 3

  $('.block-map .close').click ->
    $('.block-map').removeClass('visible-map')



  $('.main-items .item').mouseenter ->
    $(this).find('.text').removeClass('visible')
    $(this).find('img').addClass('visible')

  $('.main-items .item').mouseleave ->
    $(this).find('.text').addClass('visible')
    $(this).find('img').removeClass('visible')