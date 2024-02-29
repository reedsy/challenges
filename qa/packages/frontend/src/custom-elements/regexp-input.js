class RegExpInput extends HTMLInputElement {
  constructor() {
    super();
    this.addEventListener('input', this.#validateRegExp.bind(this));
  }

  #validateRegExp() {
    this.setCustomValidity('');
    try {
      new RegExp(this.value);
    } catch {
      this.setCustomValidity('Invalid RegExp');
    }
  }
}

customElements.define('regexp-input', RegExpInput, {extends: 'input'});
