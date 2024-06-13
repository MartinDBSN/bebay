import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pop-up"
export default class extends Controller {
  static targets = ["availabilities"]
  connect() {
  }

  reveal() {
    this.availabilitiesTarget.classList.toggle("d-none")
  }

}
