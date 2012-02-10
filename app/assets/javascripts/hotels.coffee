# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#

class Hotels

  @init: ()->
    #検索ボタン押下後イベントキャッチ
    $('#search_hotel_btn')
      .live 'click', (e)->
        console.log '[debug]serach btn clicked'
      .live 'ajax:complete', (event, data, status, xhr)->
        console.log '[debug]ajax:completed!'
        $('results').html(data.responseText)

$(document).ready =>
  form = $('form')
  form.find('input#index_arrivalDate').datepicker()
  form.find('input#index_departureDate').datepicker()
