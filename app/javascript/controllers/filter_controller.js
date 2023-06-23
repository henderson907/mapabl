import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    console.log("Hello! From filter_controller.js")
  }

  toggle() {
    this.togglableElementTarget.classList.toggle("active");
  }
}
