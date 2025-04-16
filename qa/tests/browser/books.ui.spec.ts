import { test, expect } from "@playwright/test";

test.beforeEach(async ({ page }) => {
  await page.goto("/");
});

test("has title", async ({ page }) => {
  await expect(page).toHaveTitle("📚 Bookshelf");
});

test("displays books", async ({ page }) => {
  const books = page.locator("a.book");

  await expect(books).toHaveCount(12, { timeout: 5000 });

  const count = await books.count();
  expect(count).toBe(12);
});

test("displays each book's cover image", async ({ page }) => {
  const books = page.locator("a.book");

  const count = await books.count();

  for (let i = 0; i < count; i++) {
    const book = books.nth(i);
    const bg = await book.evaluate(
      (el) => getComputedStyle(el).backgroundImage
    );

    expect(bg).toMatch(/^url\(["']?.+["']?\)$/);
  }
});

test("can view a book", async ({ page }) => {
  const books = page.locator("a.book");
  await expect(books).toHaveCount(12, { timeout: 5000 });

  const randomIndex = Math.floor(Math.random() * 12);

  const selectedBook = books.nth(randomIndex);
  const href = await selectedBook.getAttribute("href");

  await selectedBook.click();

  await page.waitForLoadState("networkidle");

  expect(page.url()).toContain(href);

  const cover = page.locator(".book-cover");
  await expect(cover).toBeVisible();

  const bg = await cover.evaluate((el) => getComputedStyle(el).backgroundImage);
  expect(bg).toMatch(/^url\(["']?.+["']?\)$/);
});

test.skip("can search for a book", async ({ page }) => {
  await page.waitForSelector(".book");

  const searchInput = await page.locator("input.form-control");

  await searchInput.fill("Pride and Prejudice");

  await page.waitForTimeout(10000);

  await page.screenshot({ path: "screenshot.png" });

  const bookImage = await page.locator(
    'img[src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1320399351i/1885._SY75_.jpg"]'
  );

  await expect(bookImage).toBeVisible();
});

test("can order books by title", async ({ page }) => {
  await page.waitForSelector(".book");

  const sortSelect = await page.locator(".form-select");
  await sortSelect.selectOption({ label: "Title" });

  await page.waitForResponse(
    (response) => response.url().includes("/books") && response.status() === 200
  );

  const bookTitles = await page.locator(".book .title").allTextContents();

  const sortedTitles = [...bookTitles].sort();
  expect(bookTitles).toEqual(sortedTitles);
});

test.skip("can order books by title over multiple pages", async ({ page }) => {
  await page.waitForSelector(".book");

  const sortSelect = await page.locator(".form-select");
  await sortSelect.selectOption({ label: "Title" });

  await page.waitForResponse(
    (response) => response.url().includes("/books") && response.status() === 200
  );

  const getBookTitles = async () => {
    return await page.locator(".book-title").allTextContents();
  };

  let page1Titles = await getBookTitles();

  const nextButton = await page.locator(".bi.bi-chevron-right");
  await nextButton.click();

  await page.waitForResponse(
    (response) => response.url().includes("/books") && response.status() === 200
  );

  let page2Titles = await getBookTitles();

  const allTitles = [...page1Titles, ...page2Titles];
  const sortedTitles = [...allTitles].sort();

  expect(allTitles).toEqual(sortedTitles);
});
