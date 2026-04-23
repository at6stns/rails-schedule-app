// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import flatpickr from "flatpickr"

function initFlatpickr() {
  const start = document.querySelector("#start_date")
  const end = document.querySelector("#end_date")

  if (start && !start._flatpickr) {
    flatpickr(start, { dateFormat: "Y-m-d" })
  }

  if (end && !end._flatpickr) {
    flatpickr(end, { dateFormat: "Y-m-d" })
  }
}

document.addEventListener("turbo:load", initFlatpickr)
document.addEventListener("turbo:render", initFlatpickr)