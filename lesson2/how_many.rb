=begin

Write a method that counts the number of occurrences of each element in a given array.
The words in the array are case-sensitive: 'suv' != 'SUV'.
Once counted, print each element alongside the number of occurrences.


PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: An array of elements
-  Output: The element with its number of occurences as a hash

---

**Problem Domain:**

---

**Implicit Requirements:**
    Words with different cases are different words
    the output must be in the form of key value pairs
    A method must be defined
    first do the counting and then the printing
---

**Clarifying Questions:**

1. 
2.
3.

---

**Mental Model:**
      take every unique value from the array, and also take the number of times it appears in the array
      then put the unique value as the key and the number of times as the value in a hash
---

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs:
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs:
  -  Output:

---

Data Structure
--------------
The input will be an array, but we will have to convert it to a hash when recording the values
---

Algorithm
---------
create an empty hash
use each unique value to iterate over the array using .each. 
for each iteration, save the count of the items as a value into a hash with the item itself as the key
then simply put the key and value by using each again but this time for the hash

Code
----

=end


def count_occurrences(array)
  count = {}

  array.map do |vehicle|
    if vehicle.downcase != nil
      vehicle.downcase!
    end
  end

  array.uniq.each do |vehicle|
    count[vehicle] = array.count(vehicle)
  end

  count.each do |vehicle, occurences|
    puts "#{vehicle} => #{occurences}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)
