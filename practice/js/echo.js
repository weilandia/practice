var putsArr = function(arr) {
  for (c=0; c<arr.length; c++) {
    console.log(arr[c]);
  }
}

var echo = function(args) {
  if (args) {
    console.log("Logs:")
    for (i=0; i<arguments.length; i++) {
      typeof(arguments[i]) == "object" ? putsArr(arguments[i]) : console.log(arguments[i]);
    }
  }
}
