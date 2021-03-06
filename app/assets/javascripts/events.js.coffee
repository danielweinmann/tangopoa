$(document).ready ->
  if $('#map').data("latitude") and $('#map').data("longitude")
    handler = Gmaps.build('Google', {zoom: 8})
    handler.buildMap { provider: {}, internal: {id: 'map'}}, ->
      marker =
        "lat": $('#map').data("latitude")
        "lng": $('#map').data("longitude")
      markers = handler.addMarkers [marker]
      handler.bounds.extendWith(markers)
      handler.fitMapToBounds()
      handler.getMap().setZoom(16)
  $('.field#image input[type=file]').on "change", ->
    $(@).parent().submit()
