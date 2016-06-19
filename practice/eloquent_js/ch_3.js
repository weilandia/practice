function myMin(a, b) {
  if (a < b)
    console.log(a);
  else if (a > b)
    console.log(b);
  else
    console.log("They're equal.");
};

function isEven(n) {
  if (n < 0)
    n = n * -1;
  if (n === 0)
    return true;
  else if (n === 1)
    return false;
  return isEven(n - 2);
}

function countBs(string) {
  var count = 0;
  for (var index = 0; index < string.length; index++)
    if (string.charAt(index) === "B")
      count++;
  return count
}

function countChar(string, char) {
  var count = 0;
  for (var index = 0; index < string.length; index++)
    if (string.charAt(index) === char)
      count++;
  return count
}
