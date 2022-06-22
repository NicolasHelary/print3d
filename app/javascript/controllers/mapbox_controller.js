import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"


export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    markersPrinters: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/outdoors-v11"
    })
    this.#addMarkersToMap()
    this.#addPrintersMarkersToMap()
    this.#fitMapToMarkers()
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      // customMarker.style.backgroundImage = `url('${marker.image_url}')`
      const customMarker = document.createElement("div")
      customMarker.className = "marker-nico"
      // customMarker.style.backgroundColor = "red"
      // customMarker.style.width = "25px"
      // customMarker.style.height = "25px"

      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

  #addPrintersMarkersToMap() {
    this.markersPrintersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      // customMarker.style.backgroundImage = `url('${marker.image_url}')`
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundColor = "blue"
      customMarker.style.width = "25px"
      customMarker.style.height = "25px"

      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }
}
