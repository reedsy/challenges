'use strict';

import fs from 'fs';
import path from 'path';

const BOOKS_FILE_PATH = path.resolve(__dirname, '../../../data/books.json');

function _readFile() {
  return fs.readFileSync(BOOKS_FILE_PATH, 'utf8');
}

export default class BooksService {
  static getAllBooks(request) {
    let booksList = JSON.parse(_readFile());
    booksList.books.forEach(b => {
      b.cover = `${ request.server.info.uri }/images/${ b.cover }`;
    });

    return JSON.stringify(booksList);
  }
}
