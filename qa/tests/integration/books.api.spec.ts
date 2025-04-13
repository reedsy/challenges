import request from "supertest";
import express, { Request, Response } from "express";
import { describe, it, expect } from "@jest/globals";

const app = express();
app.get("/books", (req: Request, res: Response) => {
  res.status(200).send("Book list");
});

describe("GET /books", () => {
  it("should return a 200 status code", async () => {
    const res = await request(app).get("/books");
    expect(res.status).toBe(200);
    expect(res.text).toBe("Book list");
  });
});
