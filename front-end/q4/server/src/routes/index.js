'use strict';

import BooksController from '../controllers/books/books-controller';
import ErrorController from '../controllers/error/error-controller';
import ImagesController from '../controllers/images/images-controller';

const routes = [
  {
    method: 'GET',
    path: '/books',
    handler: BooksController.getBooksList,
  },
  {
    method: 'GET',
    path: '/books/{slug}',
    handler: BooksController.getBook,
  },
  {
    method: 'GET',
    path: '/images/{file}',
    handler: ImagesController.getImage,
  },
  {
    method: 'GET',
    path: '/*',
    handler: ErrorController.notFound,
  },
];

export default routes;
