"# csci3055_finalproject" 

Alvin Lum

alvin.lum@uoit.net

# Swift

## About the language

  Swift is a programming language developed by Apple Inc for iOS, macOS, watchOS, tvOS, Linux and z/OS. Swift is also open-source with its source code divided into multiple open source repositories hosted on Github. The development of Swift can be found at http://swift.org. Previously, Apple used Objective-C to develop their apps for their numerous devices and was integrated into their ecosystem until Swift reached version 1.0 in September 2014. Development of Swift started in 2010 by Chris Lattner and he drew ideas from Objective-C, Rust, Haskell, Ruby, Pytho, C#, CLU, etc. when developing the Swift programming language. In December 2015, Apple made Swift open source, allowing the open source community to contribute code and libraries towards the ongoing development of Swift.

## Syntax

  Let's start with a simple print statement, in Swift to print is pretty simple 
  `print("hello world")`
  Like Python3 and Java, functions require braces `()` to accept parameters, in this case the string "hello world" was passed as a parameter into the print function. Swift uses similar syntax to its predecessor Objective-C. Unlike Java, it is optional to add semicolons after each statement in your code in Swift, but if you put use multiple statements in one line, a semicolon will be required to separate each statement `var HelloWorld = "Hello World!" ; print(HelloWorld)`. What is interesting about Swift is that unlike Python and Java, there must be an equal number of whitespace before and after an operator. For example, `print(1+2)` and `print(1 + 2)` are valid statements but `print(1 +2)` is not valid.
  
  When declaring variables, there are a couple ways to do it. One way is `var Variable: Double = 0.0` and another way is `var Variable = 0.0`. The reason why the second way is valid is because the Swift compiler has a feature called *type inference* where it can *infer* what type of variable it is based on the value you assign it. Another way of declaring a variable is `let Variable = 0.0`, but the variable declared will be immutable or constant and wouldn't be desired if it needs to be changed later on. Here's an interesting fact about Swift, almost any character can be used for constant and variable names, including unicode characters.
```
let 🚽 = "toilet"
var 🔥💦 = "firewater"
print("\(🚽)")
print("\(🔥💦)")
```
 
When executed will print
```
toilet
firewater
```

This can be useful if there are developers that speak a non english language and their language can be typed out in unicode
`let 你好 = "你好世界"`
  
Here's the syntax of an if-statement:
```
if (expression) {
  statement(s)
}
```
Here's the syntax of an if-else statement:
```
if (expression) {
  statement(s)
}
else {
  statement(s)
}
```
where the statements in else are executed if the expression is not true. Here's the syntax of an if-else-if statement:
```
if (expression) {
  statement(s)
}
else if (expression2) {
  statement(s)
}
else {
  statement(s)
}
```
An example of an if-else statement is
```
var i = 10
if i == 10 {
  print("This number is 10")
}
else {
  print("This number is not 10")
}
```
Which will print out
```
This number is 10
```
Brackets are optional in if statements. If statements in Swift are very similar to Java with one difference being that brackets are required around expressions in if statements in java while in Swift it is optional.

In Swift, there are a couple ways of using loops. Here's the syntax of a while loop:
```
while condition {
  statement(s)
}
```
And an example of a while loop
```
var i = 0

while i < 10 {
  print ("i is \(i)")
  i = i + 1
}
```
Which will print out:
```
i is 0
i is 1
i is 2
i is 3
i is 4
i is 5
i is 6
i is 7
i is 8
i is 9
```
Like the if statement, brackets are optional for while loops, but otherwise remain syntactically similar to Java.
The syntax of for-in loops in Swift is similar to for loops in Python. The only difference is that unlike Python, opening and closing brackets are required in for-in loops in Swift.
```
for index in variable {
  statement(s)
}
```

An example of a for-in loop in Swift:
```
var intList = [10,11,12,13,14]
for i in intList {
  print("Value of index is \(i)")
}
```
Resulting output:
```
Value of index is 10
Value of index is 11
Value of index is 12
Value of index is 13
Value of index is 14
```

Another example of for-in loop in Swift:
```
let range: CountableClosedRange = 1...5
for i in range {
  print("Value of i is \(i)")
}
```
Resulting output:
```
Value of i is 1
Value of i is 2
Value of i is 3
Value of i is 4
Value of i is 5
```
Swift does not support implicit type conversion so variables and constants have to be converted to the right type explicity `i = 1; Double(i)`. For string interpolation we would use `\()` to insert variable values into string literals.

Another interesting fact of Swift's syntax is its use of ranges. The most common forms of ranges are *Closed Ranges* and *Half Open Ranges*. Closed ranges use the `a...b` operator where it will create a Swift range that includes both element *a* and element *b*. A variable of type `ClosedRange` allows access of elements within its range from a collection, but is not iterable because it is not part of the *Sequence Protocol* in Swift. As shown in the example above, a range variable of type `CountableClosedRange` is declared that is similar to `ClosedRange`, but allows iteration.  Half-Open ranges use the `a..<b` operator which creates a range from element *a* up to but not including element*b*. Half-open ranges can be declared as `Range` or as `CountableRange`. Like closed ranges, `Range` is not iterable, but `CountableRange` is iterable.

## Modules and Packages

Swift is used by thousands of companies, ranging from one-man teams to multinational corporations for app development on Apple devices. So it is very important that a programming language be modular to allow large teams to work on the app at the same time.

Swift provides five different access levels within your code:

*Open Access* and *public access* allows entities to be used within any source file from their module, and any source file from another module that imports their module.

*Internal Access* allows entities to be used within any source file from their module, but cannot be used by any source file outside their module.

*File-private Access* allows entities to be used within its own defining source files only

*Private access* restricts entities to be used in the enclosing declaration and to extensions of that declaration within the same source file

By default, all entities will have an internal access level if its access level is not explicitly specified.

Swift supports modular development where Swift can organize code into modules. Each module has a namespace and access controls that are enforced, which determines which part of its code can be used outside its modules and source files. A Swift program may import other modules as *dependencies*, but most dependecies requires code to be downloaded and built in order to be used. Swift comes with a tool called *The Package Manager* which manages the distribution of Swift code by automating the process of downloading, compiling and linking of dependencies.

A package consists of a manifest file and Swift source file(s). The manifest file named `Package.swift` specifies the package's name and its contents using the `PackageDescription` module.

## Compilation and Runtime Tools

The Swift compiler is responsible for translating Swift code into executable machine code. The swift compiler front end also has tools that support IDE integration such as syntax colouring, code completion, etc. Here are some of the major components of the Swift Compiler

*The parser* implemented in `lib/Parse`, is a recursive-descent parser with an integrated, hand-coded lexer (which does lexical analysis of the code). It generates an AST (Abstract Syntax Tree) without any semantic or type information and will produce errors and warnings for grammatical and syntax problems with the input source.

*Semantic analysis* implemented in `lib/Sema`, takes the parsed AST from *the parser* and transforms it into a fully type checked form of the AST and will generate warnings and/or errors for any semantic problems in the source code. Type inference is included in semantic analysis and will indicate that it is safe to generate code from the resulting AST on success.

*The Clang importer* implemented in `lib/ClangImporter`, imports Clang modules and maps C and/or Objective-C APIs into their corresponding Swift APIs.

*SIL generation* implemented in `lib/SILGen` lowers the type-checked AST into "raw" Swift Intermediate Language (SIL). SIL is a high-level, Swift-specific intermediate language that can be used for further analysis and optimization of Swift code.

*SIL Optimizations* implemented in `lib/Analysis`, `lib/ARC`, `lib/LoopTransforms`, and `lib/Transforms`, performs additional high-level Swift-specific optimizations to the Swift program. Optimizations could include for example devirtualization and generic specialization.

*LLVM IR Generation* implemented in `lib/IRGen`, lowers SIL into LLVM IR, at which point LLVM is used to further optimize it and generate machine code.

Swift supports runtime (implemented in `stdlib/public/runtime`) which is implemented between the compiler and the core standard library. It is responsible for the implementation of many dynamic features of the language such as casting, type metadata (to support generics and reflection) and memory management (for object allocation, reference counting, etc.). Unlike Swift libraries, runtime is written mostly in C++ or Objective-C.

## Standard Libraries

The Swift standard library provides a base layer of functionality for writing Swift programs and includes (but are not limited to) the following:

Fundamental data types such as `Int`, `Double`, `String`

Data structures such as `Array`, `Dictionary` and `Set`

Global functions such as `sizeof<T>(_: T.Type)`, `max<T : Comparable>(_: T, _: T)` and `print(_:separator:terminator:)`

Protocols such as *Collection* (A sequence of elements whose elements can be traversed and iterated multiple times nondestructively) and *Equatable* (A type that can be used for value comparisons) that describe common abstractions.

Swift has numerous higher order functions that operate on other functions by either taking a function as an argument/parameter or returning a function. For example, Swift's Array type contains a few higher order functions: sorted, map, filter and reduce. These functions use closures that can determine how we want the function to sort, map, filter or reduce an array of elements.

Here's are examples of sorted functions, one of which has a sorted(by: >) function to sort in descending order
```
var nums = [5,2,3,1,8,0]
print(nums)
print(nums.sorted())
print(nums.sorted(by: >))
```

And when executed it will print:
```
[5, 2, 3, 1, 8, 0]
[0, 1, 2, 3, 5, 8]
[8, 5, 3, 2, 1, 0]
```

Here's an example of a map function
```
var nums = [0,1,2,3,4]
var numStrings = nums.map {(a) -> String in return String(a)}
print (numStrings)
```

When executed it will print:
```
["0", "1", "2", "3", "4"]
```

But can also be written with inline syntax with closures:
```
var nums = [0,1,2,3,4]
var numStrings = nums.map {String($0)}
print (numStrings)
```

Which is much simpler and prints out the same result:
```
["0", "1", "2", "3", "4"]
```

An example of the filter function using inline syntax:
```
var nums = [0,1,2,3,4]
var lessThanTwo = nums.filter{$0 < 3}
print (lessThanTwo)
```

When executed will print out:
```
[0, 1, 2]
```

An example of a reduce function using inline syntax that turns all elements in an array into one long string:
```
var nums = [0,1,2,3,4,7,6]
var allNums = nums.reduce("") {$0 + String($1)}
print (allNums)
```

When executed will print out:
```
0123476
```

## Open source libraries

In 2015, Apple made Swift open source, allowing the open source community to start developing new libraries with Swift for Apple devices. Since then hundreds of open source libraries and code have been contributed by countless developers towards the ongoing development of Swift. One such library is the IINA video player for macOS located in https://github.com/lhc70000/iina. The video player is based on an existing video player library *mpv* which is located in https://github.com/mpv-player/mpv. It has features that include subtitle support, customizable user interface, touchbar support, a standalone music mode for audio files, customizable keyboard, mouse and trackpad gesture control, etc.

## Specialized libraries

Since Swift is used in a variety of devices such as TV, iPhones, Apple Watches, etc. there are a number of speccialized libraries that are exclusively used by certain types of devices. For example, for iOS, we would import the UIKit library for use on the iOS touchscreen.

# Analysis of the Language

Swift supports both functional programming and procedural programming. Procedural programming is only supported because of Swift's compatibility with C and Objective-C.

Swift by itself does not support metaprogramming, but thanks to the open source community there are libraries that allow metaprogramming. One such a library is *Sourcery* developed by Krzysztof Zabłocki that allows metaprogramming in Swift.

Swift supports the use of closure within its code and are similar to blocks used in C and Objective-C. Closure expressions are used to write inline closures using simple, focused syntax. One such closure expression as shown earlier in the report:
```
var nums = [5,2,3,1,8,0]
print(nums)
print(nums.sorted())
print(nums.sorted(by: >))
```

Where the closure expression use the `sorted(by: >)` function to sort an array of ints in descending order. The `sorted(by: >)` function accepts a closure that takes two arguments which are of the same type as the elements in the array. It will return a `Bool` value on whether the preceding element should appear before or after the second element. The sorting closure needs to return `true` if the preceding element should be before the second element, otherwise it returns false. In the example above, the preceding element must be larger than the second element for the closure to return `true`.

Swift supports lexical scoping but does not support dynamic scoping. An example of lexial scoping:
```
func foo() -> Int {
  var a = 5

  func add() -> Int {
    let b = 2
    a = a + b
    return a
  }
  add()
  return a
}
print(foo())
```

When executed will print:
```
7
```

Swift allows functional programming thanks to the `let` construct. Declaring variables with `let` makes said variables immutable which can help when multiple threads access a variable concurrently, modify it or access it out of order. Swift allows functions to be assigned to variables and allows the implementation of partial functions. This means that functions can be encapsulated in another function and part of a function can be passed as a parameter.

Swift is a statically typed language which means the compiler does type checking at compile time instead of run time. So a variable cannot be changed once set to a type. Swift does support *dynamic type* but of a different variety, where it allows fonts to dynamically change to its preferred size.

Pros:
- Open source - Swift developers have access to a massize open source library for Swift that they can use for their projects. It's massive developer community also allows for an abundance of third party tools
- Performance - As stated by Apple, Swift is up to 2.6x faster than Objective-C and 8.4x faster than Python 2.7
- Safe - Swift provides safeguards to prevent errors and improve readability. Its syntax also ensures that you write clean and consistent code.
- Popular - Swift is currently the 14th most popular language, surpassing Go, Ruby, Perl, etc.

Cons:
- Relatively new, Swift wasn't released until September 2014 and wasn't open source until December 2015 and the language is not well established. It's limited number of native libraries and tools doesn't help it either.
- Lack of support for earlier iOS versions - Swift can only be used in apps that support iOS 7 or later. This means that legacy projects running on older versions of iOS can't use Swift.
- Constantly changing - If developers want to move to the latest Swift Version, they may end up having to rewrite their entire projects which can take a long period of tiem. A key problem that developers have with Swift is the lack of backwards compatibility with older Swift versions.
- Doesn't work well with third party tools and IDEs - Due to frequent updates and lack of backwards compatibility, it will be hard to find the right tools and IDEs for certain tasks. Even though Apple has an official IDE, XCode, it still is behind in terms of tooling and support for Swift with developers reporting issues with compilers, autocomplete, etc.
