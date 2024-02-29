export async function fetchImage(url) {
  return new Promise((resolve, reject) => {
    const image = new window.Image();
    image.onload = () => resolve(url);
    image.onerror = () => reject(new Error('Image could not be loaded'));
    image.src = url;
  });
}
