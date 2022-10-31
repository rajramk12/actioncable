import { Controller } from "@hotwired/stimulus"


console.log("in JS/ controller/ applicaiton")
export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}
