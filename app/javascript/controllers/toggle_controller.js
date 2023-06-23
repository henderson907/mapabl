import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement"]
  static values = {
    filter: Number
  }

  connect() {
    console.log("Hello from toggle_controller.js")
  }

  fire() {
    // this.togglableElementTarget.classList.toggle("active");

    console.log("button clicked - " + this.filterValue)
  }
}
