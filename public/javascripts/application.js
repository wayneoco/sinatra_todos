// application.js

$(function() {

  $("form.delete").submit(function(event) {
    event.preventDefault();
    event.stopPropagation();

    var ok = confirm("Are you sure? This cannont be undone!");
    if (ok) {
      this.submit();
    }
  });

});
