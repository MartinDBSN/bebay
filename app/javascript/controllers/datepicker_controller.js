import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    console.log("pq")
    flatpickr(this.element, {
      minDate: "today",
      enableTime: true,
      allowInput: true
    })

  }
}
