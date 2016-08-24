##Gigasecond
My code: [here](http://exercism.io/submissions/22169d37ef31410db7f6cbceb8dd98f9)
* Alt Solution #1 ([here](http://exercism.io/submissions/e80e7fdfc15648fbb526116870cbd9af)) - This solution makes some interesting decisions that I'm not sure I agree with. They define Gigasecond, then use.prototype.date to return the solution. These could be merged into one function/constructor.

* Alt Solution #2 ([here](http://exercism.io/submissions/01bae3d00e7c416aa3c7826e322e667c)) - This solution is pretty similar to mine, except it doesn't use exponents to decreate the gigasecond and it uses an extra line to define a variable called birthday.

* Alt Solution #3 ([here](http://exercism.io/submissions/78f00c87ed074c0b8c7e7ff1502ea21b)) - This solution is very similar to Alt Solution #1. I like about they used 10e11 instead of pow to define the gigasecond.

* Alt Solution #4 ([here](http://exercism.io/submissions/7f1eda89c38944b4b367fe0e3f6cec56)) - This solution is interesting for a few reasons. First, they use the "class" definition which I think is pretty new. Second, they export the class/function directly. Third, they define the constructor explicitly.

* Alt Solution #5 ([here](http://exercism.io/submissions/d92d11ef301a4f46b1f9f185e035d5bc)) - This solution is interesting in that they used a constant to defind the gigasecond. They also used a class with an explicit constructor and used date() and a method rather than an attribute.

##Bob
My code: [here](http://exercism.io/submissions/90922213a40a4b62898a93ca38d4f90d)
* Alt Solution #1 ([here](http://exercism.io/submissions/2fab7bb8dce248a783397da8fcac95d6)) - This solution has very similar logic, but user multiple if statements with explicit returns rather than using if/else statements.

* Alt Solution #2 ([here](http://exercism.io/submissions/c0b6978be67740c6abf60a17770560b5)) - This solution made an attempt at drying up the code by extracting conditional logic into methods, but I don't think this would have been necessary if the logic was made more concise. The resulting solution is much longer than it needs to be.

* Alt Solution #3 ([here](http://exercism.io/submissions/95ad313f28f543f09ddf22f84539502f)) - This logic in this solution is very similar but he made the mistake of splitting the string, which isn't necessary.

* Alt Solution #4 ([here](http://exercism.io/submissions/9a2fde7acc754e8c9bda0109c312bb2e)) - Again, very similar logic, but the solution uses ```.endsWith()```, which is cool.

* Alt Solution #5 ([here](http://exercism.io/submissions/d50f4707e63c4c90b86d8cba7fc12570)) - I don't like this solution. First, functions are defined upfront for isQuestion and isShouting, which I don't think is particularly usefule. Also, the logic is managed by multiple if statements instead of if/else statements.

##{NAME}
My code: [here](http://exercism.io/submissions/186eb6785348434880664eb9064724c5)
* Alt Solution #1 ([here](http://exercism.io/submissions/81ae30a0670c4060aa038be6673a622d)) - Erinna's solution has an interesting difference in that it build a string to determine uniqueness instead of building an array and evaluates equality against a sorted alphabet. I think her solution is more performant, but I would like to discuss to confirm.

* Alt Solution #2 ([here](http://exercism.io/submissions/c2d04593e5624daba2badc357c3ecdc4)) - This solution the alphabet as an object with letters as keys and integers (0) as their values.  My first reaction was that I didn't like the solution because it was verbose, but it avoids having to do a loop to determine uniqueness and is likely more performant.

* Alt Solution #3 ([here](http://exercism.io/submissions/7d2e11b2ae7c49d49c7061359d296297)) - This solution uses the same logic as my solution to determine uniqueness, checking to see if indexOf is less than 0, and the solution is much shorter, but at the expense of readability.  Though, the logic is not complex so this may be sufficiently readable.

* Alt Solution #4 ([here](http://exercism.io/submissions/80d860c39fa04380b16aca3e667dd703)) - I like this solution a lot, but it's using ECMAScript syntax (Set) to identify uniqueness. Cheating, but brings up a great question about whether it's useful to learn JS with things like Babel converting ECMAScript to JS for browsers that aren't ready.

* Alt Solution #5 ([here](http://exercism.io/submissions/451ce7fe89f24c1fbbef3464ba7943d7)) - This solution is nice and clear, but it defines a couple methods in the global scope that should probably be defined directly on an instance of Prototype.
