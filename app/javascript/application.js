import "@hotwired/turbo-rails"
import "./controllers"
import "@popperjs/core"
import "bootstrap"
import flatpickr from "flatpickr";

document.addEventListener("turbo:load", function() {
  flatpickr(".flatpickr", {
    // Add any Flatpickr options here
  });
});
