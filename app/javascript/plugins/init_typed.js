import Typed from 'typed.js';

const initTyped = () => {
  const typed = new Typed('#typed', {
    stringsElement: '#typed-strings',
    typeSpeed: 40,
    showCursor: false
  });
}

export { initTyped };


