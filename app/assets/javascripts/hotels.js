var _this = this;

$(document).ready(function() {
  var form;
  console.log('hoge');
  form = $('form');
  form.find('input#index_arrivalDate').datepicker();
  return form.find('input#index_departureDate').datepicker();
});
