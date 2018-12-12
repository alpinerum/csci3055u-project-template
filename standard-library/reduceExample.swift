var nums = [0,1,2,3,4,7,6]
var allNums = nums.reduce("") {$0 + String($1)}
print (allNums)
