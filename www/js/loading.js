const letters = document.querySelectorAll('.letter');

let delay = 0;

letters.forEach(letter => {
  letter.style.setProperty('--delay', `${delay}s`);
  delay += 0.2;
});


window.onload = function() {
  document.querySelector('.loader').style.display = 'block';
};
