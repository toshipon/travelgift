# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#

$(document).ready =>
  console.log 'hoge'
  form = $('form')
  form.find('input#index_arrivalDate').datepicker()
  form.find('input#index_departureDate').datepicker()
