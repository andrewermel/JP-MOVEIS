import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["background"]

  changeBackground() {
    document.body.style.backgroundColor = "black"
  }
}
