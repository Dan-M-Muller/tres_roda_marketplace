import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = ["carForm"];

  connect() {
    console.log("Oi do controller");
  }

  toggle(e) {
    this.carFormTarget.classList.toggle("d-none");
    if (e.currentTarget.classList.contains("btn-ghost-fill")) {
      e.currentTarget.classList.remove("btn-ghost-fill");
      e.currentTarget.classList.add("btn-ghost");
    } else {
      e.currentTarget.classList.add("btn-ghost-fill");
      e.currentTarget.classList.remove("btn-ghost");
    }
  }
}
