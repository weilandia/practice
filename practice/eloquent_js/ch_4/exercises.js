function range(start, end, step) {
  collection = []
  if(start < end) {
    if(arguments.length === 2)
      step = 1;
    for (var i = start; i <= end; i += step)
      collection.push(i);
    return collection;
  } else
      if(step === undefined)
        step = -1;
      for (var i = start; i >= end; i += step)
        collection.push(i);
      return collection;
}

function sum(arr) {
  result = 0
  for (var i = 0; i < arr.length; i++)
    result += arr[i];
  return result
}

function reverseArray(arr) {
  newArr = []
  for (var i = 0; i < arr.length; i++)
    newArr.unshift(arr[i]);
  return newArr;
}

function reverseArrayInPlace(arr) {
  for (var i = 0; i < Math.floor(arr.length / 2); i++) {
    current = arr[i];
    arr[i] = arr[(arr.length -1 -i)];
    arr[(arr.length -1 -i)] = current;
  }
  return arr;
}

function arrayToList(arr) {
  var list = null;
  for (var i = arr.length - 1; i >= 0; i--)
    list = {value: arr[i], rest: list};
  return list;
}

function listToArray(list) {
  arr = []
  for (var node = list; node; node = node.rest)
    arr.push(node.value);
  return arr;
}

function prepend(node, list) {
  return {value: node, rest: list};
}

function nth(position, list) {
  if (!list)
    return undefined;
  else if (position == 0)
    return list.value;
  else
    return nth(position - 1, list.rest);
}

function deepEqual(a, b) {
  if (a === b) return true;

  if (a == null || typeof a != "object" ||
      b == null || typeof b != "object")
    return false;

  var propsInA = 0, propsInB = 0;

  for (var prop in a)
    propsInA += 1;

  for (var prop in b) {
    propsInB += 1;
    if (!(prop in a) || !deepEqual(a[prop], b[prop]))
      return false;
  }

  return propsInA == propsInB;
}
