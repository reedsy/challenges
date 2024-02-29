import { ref } from 'vue'
import { defineStore } from 'pinia'

export const useBookStore = defineStore('books', () => {
  async function fetchBooks(options = {}) {
    const url = new URL('http://localhost:3000/api/books');
    for (const key in options) url.searchParams.append(key, options[key]);
    const response = await fetch(url);
    return await response.json();
  }

  async function fetchBook(id) {
    const response = await fetch(`http://localhost:3000/api/books/${id}`);
    return await response.json();
  }

  return { fetchBooks, fetchBook };
})
