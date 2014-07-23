$(document).on("ready page:load", function() {
  Beers.initialize();
});

var Beers = function() {
  var handleBeerSave = function() {
    $("#new_beer").on("ajax:success", function(xhr, data, status) {
      $("#beers_list").html(data);
    });
  }

  return {
    initialize: function() {
      handleBeerSave();
    }
  }
}();
