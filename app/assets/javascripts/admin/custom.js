$(document).ready(function ($) { 
  $(".change-slug").on("click", function () {
    var t = $(".input-title").val();
    if ("" != t) {
      var e = t
        .trim()
        .toLowerCase()
        .normalize("NFD")
        .replace(/[\u0300-\u036f]/g, "")
        .replace(/đ/g, "d")
        .replace(/Đ/g, "D")
        .replace(/\s/g, "-");
      $(".input-slug").val(
        e +
          "-" +
          (function (a) {
            charSet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            for (var t = "", e = 0; e < a; e++) {
              var l = Math.floor(Math.random() * charSet.length);
              t += charSet.substring(l, l + 1);
            }
            return t;
          })(5)
      );
    }
  }),
  $(".custom-file-input").on("change", function () {
    var t = $(this).val().split("\\").pop();
    $(this).siblings(".custom-file-label").addClass("selected").html(t);
  });
});
