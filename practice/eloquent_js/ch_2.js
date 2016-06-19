var result = "";
var counter = 0;
while (counter < 8) {
  result = result + "#";
  console.log(result);
  counter ++;
}

for (var number = 1; number < 101; number++) {
  if (number % 5 === 0 && number % 3 === 0)
    console.log("FizzBuzz");
  else if (number % 5 === 0)
    console.log("Buzz");
  else if (number % 3 === 0)
    console.log("Fizz");
  else
    console.log(number)
}

var board = "# # # # \n \ # # # #"

function buildBoard(size) {
  for (var i = 0; i < size; i += 2)
    console.log(board);
}
