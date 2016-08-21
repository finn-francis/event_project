function setClick(id) {
  var commentEditButton = "#" + id + "-comment-edit"
  var commentId = "#" + id + "-comment"
  var commentEditBoxId = "#" + id + "-edit-box"

  $(commentEditButton).click(function (a, b) {
    return function () {
      $(a).toggle()
      $(b).toggle();
    };
  }(commentId, commentEditBoxId));
}
