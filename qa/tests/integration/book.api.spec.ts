import request from "supertest";
import express, { Request, Response } from "express";
import { describe, it, expect } from "@jest/globals";

const app = express();

app.get("/books/:id", (req: Request, res: Response) => {
  const { id } = req.params;
  if (id === "1") {
    res.status(200).json({ id: "1", title: "The Hobbit" });
  } else {
    res.status(404).send("Book not found");
  }
});

describe("GET /books/:id", () => {
  it("should return a book if the ID exists", async () => {
    const res = await request(app).get("/books/1");
    expect(res.status).toBe(200);
    expect(res.body).toEqual({ id: "1", title: "The Hobbit" });
  });

  it("should return 404 if the book does not exist", async () => {
    const res = await request(app).get("/books/999");
    expect(res.status).toBe(404);
    expect(res.text).toBe("Book not found");
  });
});
