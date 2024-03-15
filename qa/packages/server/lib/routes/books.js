import {Router} from "express";
import {get, list} from "../controllers/books.js";

export const BOOKS_ROUTES = new Router();
BOOKS_ROUTES.get('/', list);
BOOKS_ROUTES.get('/:id', get);
