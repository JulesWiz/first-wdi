
join = ( left , right ) -> 
  left + right 

console.log join("1 + 1 = ", "2")

multiply = ( a , b ) ->
  a * b

 console.log multiply(42,3257)

 smallNumber = ( a , b ) ->
   if a < b then a
   else b

 console.lo
 g smallNumber(2,1)

bigNumber = ( a , b ) ->
   Math.max( a , b )

 console.log bigNumber(2,1)

sumArray = (number_array) ->
  total = 0
  total += number_array for number_array in testArray 
  total

testArray = [1, 5, 4, 3, 2, 9, 8, 7, 6, 10]
console.log sumArray(testArray)

console.log '\n# The Big One #1'
theBigOne = (testArray) ->
  Math.max.apply(null,testArray) 

testArray = [ 1 , 5 , 4 , 3 , 2 , 9 , 8 , 7 , 6 , 10 ]
console.log theBigOne(testArray)

console.log '\n# The Big One #2'
theBigOne = (number_array) ->
  biggest_num = number_array[0]
  index = 0
  while index < number_array.length
    if biggest_num < number_array[index + 1]
      biggest_num = number_array[index + 1]
    index++
  biggest_num

console.log theBigOne testArray

console.log '\n# Fibonacci #1'

fibonacci = (x) ->
  start = [1,1]
  while start.length < x
    nextOne = start[start.length - 1] + start[start.length - 2]
    start.push nextOne
  console.log(start)

fibonacci(10)

console.log '\n# Fibonacci #2 w Recursive Function'
fibonacci = (x) ->
  return 0 if x == 0
  return 1 if x == 1
  return fibonacci(x-1) + fibonacci(x-2)

console.log fibonacci 10

console.log '\n# Fibonacci #3 w Recursive Function one line version'
fibonacci = (x) -> if x < 2 then x else (fibonacci(x-1) + fibonacci(x-2))
console.log fibonacci 10


ccType = (creditCardNumber) ->
  switch creditCardNumber.toString()[0]
    when "3" then console.log("travel/entertainment cards")
    when "4" then console.log("Visa")
    when "5" then console.log("Master Card")
    when "6" then console.log("Discover Card")
    else console.log("no")

ccType(382789)

console.log '\n# ccType(creditCardNumber) #2'
ccType = (cc) ->
  visa_ptn = /^4[0-9]{6,}$/
  master_ptn = /^5[1-5][0-9]{5,}$/
  amex_ptn = /^3[47][0-9]{5,}$/
  diners_ptn = /^3(?:0[0-5]|[68][0-9])[0-9]{4,}$/
  disc_ptn = /^6(?:011|5[0-9]{2})[0-9]{3,}$/
  jbc_ptn = /^(?:2131|1800|35[0-9]{3})[0-9]{3,}$/
  cc = cc.replace /\ /g, ""

  if cc.match(visa_ptn)
    "Visa"
  else if cc.match(master_ptn)
    "Master"
  else if cc.match(amex_ptn)
    "American Express"
  else if cc.match(diners_ptn)
    "Diners"
  else if cc.match(disc_ptn)
    "Discovery"
  else if cc.match(jbc_ptn)
    "JBC"
  else
    "Unknown"
console.log ccType("5185 4000 0003 1234")

