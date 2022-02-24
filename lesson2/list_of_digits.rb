#Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: A positive integer
-  Output: Returns a list of digits in that number

---

**Problem Domain:**

---

**Implicit Requirements:**

--- The number can be of any range
    It cannot be negative
    It must be an integer, not a float or a string

**Clarifying Questions:**

1. How are the numbers to be outputted? - In an array
2. What must be returned? The boolean value
3.

---

**Mental Model:**
Divide the number by 10 and put the remainder into a new array
do this over and over until there is no number left
---

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: (1,2,3,4,5)
  -  Output: [1,2,3,4,5]
-  Example 2
  -  Inputs: (7)
  -  Output: [7]

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
The output is an array so we use an array to represent it
---

Algorithm
---------
  use a loop to divide the number by 10 using divmod.
  Save the remainder into an array
  do this until there is no number left
  
Code
----

=end

def digit_list(number)
  order = []
  loop do
    number, remainder = number.divmod(10)
    order << remainder
    break if number == 0
  end
  order.reverse
end

p digit_list(347834)


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
