import {BOOKS} from '../fixtures/dev-books.js';
import {by} from '../utils/sort-by.js';
import {SECOND} from '../utils/time.js';
import {timeout} from '../utils/timeout.js';

class BookStore {
  #books;

  constructor(books) {
    this.#books = books.map((book, index) => ({id: index, ...book}));
  }

  async list({offset, limit, sort, order, search} = {}) {
    await timeout(1 * SECOND);

    offset ||= 0;
    offset = +offset;
    limit ||= 100;
    limit = +limit;
    sort ||= 'id';
    search ||= '.+';

    const regexp = new RegExp(search, 'i');

    return this.#books
      .filter(({title}) => regexp.test(title))
      .slice(offset, offset + limit)
      .sort(by(sort, order));
  }

  async get(id) {
    await timeout(1 * SECOND);
    return this.#books[id];
  }
}

export const BOOK_STORE = new BookStore(BOOKS);
