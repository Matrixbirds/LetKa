/**
 * @param {string} s
 * @return {string}
 */
var reverseString = function(s) {
  const swap = (arr, a, b) => { let c = arr[a]; arr[a] = arr[b]; arr[b] = c;}
  const chars = Array.from(s);
  let [p1, p2] = [0, chars.length-1];
  while (p1 < p2) {
    swap(chars, p1, p2);
    p1++;
    p2--;
  }
  return chars.join("");
};
