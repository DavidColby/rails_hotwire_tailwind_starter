import { Alert } from "tailwindcss-stimulus-components"

export default class ExtendedAlert extends Alert {
  static targets = []

  initialize() {
  }

  connect() {
    this.show()
  }

  show() {
    this.element.classList.add("scale-in")
    setTimeout(() => {
      this.close()
    }, 3000)
  }

  close() {
    this.hide()
    setTimeout(() => {
      this.element.remove()
    }, 150)

  }

  hide() {
    this.element.classList.add("fade-out")
  }
}
