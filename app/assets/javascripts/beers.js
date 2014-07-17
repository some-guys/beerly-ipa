$(document).ready(function() {
  Beers.initialize();
});

var Beers = function() {
  var handleBeerUpdate = function() {
    $("#new_beer").on("ajax:success", function(xhr, data, status) {
      $("#beers_list").html(data);
    });
  }

  return {
    initialize: function() {
      handleBeerUpdate();
    }
  }
}();
