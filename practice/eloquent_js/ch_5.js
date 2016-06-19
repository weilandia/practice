function flatten(arr) {
  function flat(a, b) { return a.concat(b) };
  return arr.reduce(flat);
}
