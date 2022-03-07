=begin
Build a car mortgage calculator
You will need:
1) loan amount
2) annual percentage rate (APR)
3) loan duration

Calculate the following:
1) monthly interest rate
2) loan duration in months
3) monthly payment

m = p * (j / (1 - (1 + j)**(-n)))
m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months

=end









puts "=> Please enter the loan amount"
loan_amount = gets.chomp.to_f
puts loan_amount

puts "=> Please enter the annual percentage rate"
apr = gets.chomp.to_f
monthly_rate = apr/12
puts monthly_rate

puts "=> Please enter the loan duration"
loan_duration = gets.chomp.to_f
loan_duration = loan_duration*12
puts loan_duration

monthly_payment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration)))
p monthly_payment