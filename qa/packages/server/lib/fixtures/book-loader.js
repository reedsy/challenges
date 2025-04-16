export async function loadBooks() {
  if (process.env.NODE_ENV === "test") {
    return (await import("./test-books.js")).BOOKS;
  }
  return (await import("./dev-books.js")).BOOKS;
}
