$(commentEditButton).click(function (a, b) {
  return function () {
    $(a).toggle()
    $(b).toggle();
  };
}(commentId, commentEditBoxId));
