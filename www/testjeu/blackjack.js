const canvas = document.createElement('canvas');
document.body.appendChild(canvas);

const img = new Image();
img.src = 'images.png';

img.onload = () => {
  const ctx = canvas.getContext('2d');
  canvas.width = img.width;
  canvas.height = img.height;
  ctx.drawImage(img, 0, 0);
}
