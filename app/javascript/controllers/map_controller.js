import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.map.addControl(new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl,
      zoom: 15
    }))

    this.map.addControl(
      new mapboxgl.GeolocateControl({
        positionOptions: {
          enableHighAccuracy: true,
          },
        trackUserLocation: true,
        showAccuracyCircle: false
        })
      );


    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.defaultPosition()
  }

  defaultPosition() {
    this.map.on('load', function() {
      if(navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(position => {
          this.flyTo({center: [position.coords.longitude, position.coords.latitude], duration: 500})
        })
      } else {
        this.flyTo({center: [0, 0]})
      }
    })
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker, i) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "30px"
      customMarker.style.height = "32px"
      customMarker.setAttribute('data-action', 'click->map#flyToVenue')
      customMarker.setAttribute('id', i)

      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  flyToVenue(e) {
    var markers = this.markersValue;
    var i = e.target.id
    this.map.flyTo({
      center: [markers[i].lng, markers[i].lat]
    })
  }
}
