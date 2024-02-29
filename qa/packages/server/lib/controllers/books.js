import {BOOK_STORE} from "../store/books.js";

export async function list(request, response) {
  response.json(await BOOK_STORE.list(request.query));
}

export async function get(request, response) {
  response.json(await BOOK_STORE.get(request.params.id));
}
