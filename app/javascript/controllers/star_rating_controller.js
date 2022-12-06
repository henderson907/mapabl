import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating.js"

// Connects to data-controller="star-rating"
export default class extends Controller {
  connect() {
   var star =  new StarRating(this.element);
   star.props = { tooltip: false, clearable: false};
   star.rebuild();
  }
}
