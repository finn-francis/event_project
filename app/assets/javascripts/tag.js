function setTag() {
  console.log('called');
  $('#new-tag-button').click(function() {
    $('#new-tag-form').slideToggle('display');
  });
};
