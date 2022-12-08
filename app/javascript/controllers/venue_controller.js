import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ['upload']

  upload() {
    const file = document.getElementById("venue_photos");
    const label = this.uploadTarget;
    file.src = URL.createObjectURL(event.target.files[0]);
    label.style.backgroundImage =`url('${file.src}')`;
    label.style.backgroundSize = 'cover';
    label.style.opacity = .7;
  }
}
