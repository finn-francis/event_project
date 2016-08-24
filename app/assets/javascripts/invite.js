function setInviteClick() {
  $('#invite-button').click(function () {
    inviteEvent();
  });
}

function inviteEvent() {
  var userId = $('#map').data('user-id');
  var eventId = $('#show-event').data('event-id');

  $.ajax({
    type: 'GET',
    url: '/users/' + userId + '/friendships',
    data: { "event_id": eventId },
    contentType: 'application/js',
    success: function () {
      $('#attending').append(userFriends);
      $('#invite-button').toggle('display');
    }
  });
}
