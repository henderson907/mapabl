import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    console.log("Hello! From filter_controller.js")
  }

  toggle() {
    this.togglableElementTarget.classList.toggle("active");
    // If the element is now active, remove any markers that do not match the specified criteria
    // If the element is no longer active, add markers that would otherwise be excluded???
    // $.ajax({
    //   url: '/venues_controller/update_map',
    //   type: 'POST',
    // });
  }
}
