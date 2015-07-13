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



$(document).ready(function(){
  $('select').each(function(){
      var $this = $(this), numberOfOptions = $(this).children('option').length;
    
      $this.addClass('select-hidden'); 
      $this.wrap('<div class="select"></div>');
      $this.after('<div class="select-styled"></div>');

      var $styledSelect = $this.next('div.select-styled');
      $styledSelect.text($this.children('option').eq(0).text());
    
      var $list = $('<ul />', {
          'class': 'select-options'
      }).insertAfter($styledSelect);
    
      for (var i = 0; i < numberOfOptions; i++) {
          $('<li />', {
              text: $this.children('option').eq(i).text(),
              rel: $this.children('option').eq(i).val()
          }).appendTo($list);
      }
    
      var $listItems = $list.children('li');
    
      $styledSelect.click(function(e) {
          e.stopPropagation();
          $('div.select-styled.active').each(function(){
              $(this).removeClass('active').next('ul.select-options').hide();
          });
          $(this).toggleClass('active').next('ul.select-options').toggle();
      });
    
      $listItems.click(function(e) {
          e.stopPropagation();
          $styledSelect.text($(this).text()).removeClass('active');
          $this.val($(this).attr('rel'));
          $list.hide();
          //console.log($this.val());
      });
    
      $(document).click(function() {
          $styledSelect.removeClass('active');
          $list.hide();
      });

  });
});





