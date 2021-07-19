import { Modal } from "tailwindcss-stimulus-components"

export default class ExtendedModal extends Modal {
  connect() {
    super.connect()
    if(this.element.dataset.trigger && this.element.dataset.trigger === "onLoad") {
      this.openOnLoad()
    }
  }

  open(e) {
    if (this.preventDefaultActionOpening) {
      e.preventDefault();
    }

    e.target.blur();

    // Lock the scroll and save current scroll position
    this.lockScroll();

    // Unhide the modal
    this.containerTarget.classList.remove(this.toggleClass);

    // Insert the background
    if (!this.data.get("disable-backdrop")) {
      document.body.insertAdjacentHTML('beforeend', this.backgroundHtml);
      this.background = document.querySelector(`#${this.backgroundId}`);
    }
  }

  close(e) {
    if (e && this.preventDefaultActionClosing) {
      e.preventDefault();
    }

    // Unlock the scroll and restore previous scroll position
    this.unlockScroll();

    // Hide the modal
    this.containerTarget.classList.add("fade-out");
    setTimeout(() => {
      if (this.background) { this.background.remove() }
      this.containerTarget.classList.add(this.toggleClass);
      this.containerTarget.classList.remove("fade-out")
    }, 150);
  }
}
