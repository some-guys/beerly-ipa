$(document).on("ready page:load", function() {
  MenuItems.initialize();
});

var MenuItems = function() {
  var handleMenuItemSave = function() {
    $("#new_menu_item").on("ajax:success", function(xhr, data, status) {
      debugger;
      $("#menu_items_list").html(data);
    });
  }

  return {
    initialize: function() {
      handleMenuItemSave();
    }
  }
}();

