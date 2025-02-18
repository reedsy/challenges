import { ref } from 'vue'
import type { Book } from '../types/types'

export const books = ref<Book[]>([])
export const book = ref<Book | null>(null)

export const getBooks = async (slug: string) => {
  const address = `${window.location.protocol}//${window.location.hostname}`

  try {
    const response = await fetch(`http://localhost:3000/books${slug ? `/${slug}` : ''}`)
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`)
    }
    const data = await response.json()

    const truncateSynopsis = (synopsis: string) => {
      return synopsis.length > 200 ? synopsis.substring(0, 200) + '...' : synopsis
    }

    if (slug) {
      book.value = data
      if (book.value) {
        book.value.cover = `${address}${book.value.cover.substring(17)}`
      }
    } else {
      books.value = data.books.map((book: Book) => ({
        ...book,
        cover: `${address}${book.cover.substring(17)}`,
        synopsis: truncateSynopsis(book.synopsis),
      }))
    }
  } catch (error) {
    console.error('Error fetching books:', error)
  }
}
