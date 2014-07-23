$(document).on("ready page:load", function() {
  Locations.initialize();
});

var Locations = function() {
  var handleLocationUpdate = function() {
    $("#new_location").on("ajax:success", function(xhr, data, status) {
      $("#locations_list").html(data);
    });
  }

  return {
    initialize: function() {
      handleLocationUpdate();
    }
  }
}();

