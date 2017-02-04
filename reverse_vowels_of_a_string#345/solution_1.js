/**
 * @param {string} s
 * @return {string}
 */
var reverseVowels = function(s) {
  const isVowels = char => { return ['a', 'e', 'i', 'o', 'u'].includes(char.toLowerCase()); };
  const swap = (arr, a, b) => { let t = arr[a]; arr[a] = arr[b]; arr[b] = t; };
  const chars = Array.from(s);
  let [p1, p2] = [0, chars.length-1];

  while (p1 < p2) {
    if (isVowels(chars[p1]) && isVowels(chars[p2])) {
       swap(chars, p1, p2);
       p1++
       p2--;
    } else {
        if (!isVowels(chars[p1]) && isVowels(chars[p2])) {
           p1++;
        }
        else if (isVowels(chars[p1]) && !isVowels(chars[p2])) {
           p2--;
        }
        else {
           p1++;
           p2--;
        }
    }
  }
  return chars.join("");
};
