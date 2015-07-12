$(document).ready(function(){
  function initialize() {
    var myLatlng = new google.maps.LatLng(47.226869, 39.732249);
    var styles = [
        {
          stylers: [
              { saturation: '-100' }
          ]
        }
      ];
    var mapOptions = {
      zoom: 18,
      center: myLatlng,
      disableDefaultUI: true,
      scrollwheel: false,
      styles: styles
    }
    
    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

    var icon1 = "../images/Geo 1.svg";
    var icon2 = "../images/Geo 2.svg";

    

    var marker = new google.maps.Marker({
        position: myLatlng,
        icon: icon1,
        map: map,
    });

    google.maps.event.addListener(marker, 'mouseover', function() {
      marker.setIcon(icon2);
    });
    google.maps.event.addListener(marker, 'mouseout', function() {
        marker.setIcon(icon1);
    });
    google.maps.event.addListener(marker, 'click', function() {
      $('.block-map').addClass('visible-map');
    });
  }

  
  google.maps.event.addDomListener(window, 'load', initialize);

});







