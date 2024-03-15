import {BOOKS_ROUTES} from "./books.js";
import {Router} from 'express';

export const ROUTER = new Router();
ROUTER.use('/books/', BOOKS_ROUTES);
