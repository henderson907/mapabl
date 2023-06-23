import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement"]
  static values = {
    buttonId: String
  }


  connect() {
    console.log("Hello! From filter_controller.js")
  }

  toggle() {
    console.log("toggled")
    this.togglableElementTarget.classList.toggle("active");
  }

  fire() {


    console.log(`button clicked - ${this.buttonIdValue}`)
  }
}
