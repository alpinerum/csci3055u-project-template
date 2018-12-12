func foo() -> Int {
  var a = 5

  func add() -> Int {
    let b = 2
    a = a + b
    //print(a)
    return a
  }
  add()
  return a
}
print(foo())
