var Hotels;
var _this = this;

Hotels = (function() {

  function Hotels() {}

  Hotels.init = function() {
    return $('#search_hotel_btn').live('click', function(e) {
      return console.log('[debug]serach btn clicked');
    }).live('ajax:complete', function(event, data, status, xhr) {
      console.log('[debug]ajax:completed!');
      return $('results').html(data.responseText);
    });
  };

  return Hotels;

})();

$(document).ready(function() {
  var form;
  form = $('form');
  form.find('input#index_arrivalDate').datepicker();
  return form.find('input#index_departureDate').datepicker();
});
