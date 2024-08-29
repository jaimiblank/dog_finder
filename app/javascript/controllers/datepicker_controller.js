import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";// Add this line to import CSS

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    // console.log("Datepicker controller connected"); // Add this line for debugging
    flatpickr(this.element, {
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d",
    })
    // console.log("Flatpickr initialized"); // Add this line for debugging
  }
}
