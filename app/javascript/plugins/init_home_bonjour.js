// Can also be included with a regular script tag
import Typed from 'typed.js';

const initType = () => {
  var options = {
    strings: ['<i>First</i> sentence.', '&amp; a second sentence.'],
    typeSpeed: -100
  }

  var typed = new Typed('#typed', {
    stringsElement: '#typed-strings'
  });
}
export { initType }
