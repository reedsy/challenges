export function timeout(milliseconds = 0) {
  return new Promise((resolve) => setTimeout(resolve, milliseconds));
}
