var HouseListFilter = {
  filter_available: function () {
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(this).is(':checked')) {
      $('tr.available').hide();
    } else {
      $('tr.available').show();
    };
  },
  setup: function() {
    // construct checkbox with label
    var labelAndCheckbox =
      $('<label for="filter">Only available houses</label>' +
        '<input type="checkbox" id="filter"/>' );
    labelAndCheckbox.insertBefore('table#houses');
    $('#filter').change(HouseListFilter.filter_available);
  }
};
$(HouseListFilter.setup); // run setup function when document ready


