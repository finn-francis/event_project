var map;
var markers = [];

function initMap() {
  mapDiv = $('#map');
  lat = mapDiv.data('latitude');
  lng = mapDiv.data('longitude');

  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: lat, lng: lng},
    zoom: 12
  });

  addMarker(lat, lng, "B");
  loadProfileMarker();
}

function addMarker(lat, lng, title) {
  var marker = new google.maps.Marker({
    position: { lat: parseFloat(lat), lng: parseFloat(lng) },
    map: map,
    label: title
  });
  markers.push(marker);
  return marker
}

function loadProfileMarker() {
  var url = '/users/' + mapDiv.data('user-id') + '/profile';
  $.ajax({
    type: 'GET',
    url: url,
    contentType: 'application/json',
    success: function (profile) {
      if (profile.latitude && profile.longitude) {
        addMarker(profile.latitude, profile.longitude, "A");
        resizeMap();
      }
    }
  });
}

function resizeMap() {
  var bounds = new google.maps.LatLngBounds();

  for(var i = 0; i < markers.length; i++) {
    var marker = markers[i];
    bounds.extend(marker.getPosition());
  }
  map.fitBounds(bounds);
}

