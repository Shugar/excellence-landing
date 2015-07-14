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
    infinite: false 
    arrows: true
    dots: false
    centerMode: true
    variableWidth: true
    autoplay: true
    autoplaySpeed: 6000
    centerMode: true
    centerPadding: '0px'
    slidesToShow: 3


  $('.slick-next').mouseleave ->
    $(this).addClass('slick-next-image')
    
  $('.block-map .close').click ->
    $('.block-map').removeClass('visible-map')



  $('.main-items .item').mouseenter ->
    $(this).find('.text').removeClass('visible')
    $(this).find('img').addClass('visible')

  $('.main-items .item').mouseleave ->
    $(this).find('.text').addClass('visible')
    $(this).find('img').removeClass('visible')


  $('.right > button').click ->
    $('.modal-container').addClass('modal-visible')

  $('.krest').click ->
    $('.modal-container').removeClass('modal-visible')

  if $('#map-canvas').length > 0
    
    initialize = ->
      myLatlng = new (google.maps.LatLng)(47.226869, 39.732249)
      styles = [ { stylers: [ { saturation: '-100' } ] } ]
      mapOptions = 
        zoom: 18
        center: myLatlng
        disableDefaultUI: true
        scrollwheel: false
        styles: styles
      map = new (google.maps.Map)(document.getElementById('map-canvas'), mapOptions)
      icon1 = 'images/geo.svg'
      icon2 = 'images/geohover.svg'
      marker = new (google.maps.Marker)(
        position: myLatlng
        icon: icon1
        map: map)
      google.maps.event.addListener marker, 'mouseover', ->
        marker.setIcon icon2
        return
      google.maps.event.addListener marker, 'mouseout', ->
        marker.setIcon icon1
        return
      google.maps.event.addListener marker, 'click', ->
        $('.block-map').addClass 'visible-map'
        return
      return

    google.maps.event.addDomListener window, 'load', initialize
    return