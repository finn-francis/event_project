var map;

function initMap() {
  mapDiv = $('#map');
  lat = mapDiv.data('latitude');
  lng = mapDiv.data('longitude');

  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: lat, lng: lng},
    zoom: 12
  });

  addMarker(lat, lng);
}

function addMarker(lat, lng) {
  var marker = new google.maps.Marker({
    position: { lat: parseFloat(lat), lng: parseFloat(lng) },
    map: map,
  });

  return marker;
}

