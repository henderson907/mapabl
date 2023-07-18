import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["navbarElement"]

  connect() {
    console.log("'Sup bitches")
  }
  change_page() {
    // this.navbarElementTarget.classList.add("active");
    console.log("activated!")
  }
}
