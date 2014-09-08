continue = 1
while continue == 1
	puts "What calculator would you like to use? (Fibbonacci = 1, Tax = 2, Slope = 3, Factorial = 4, and Prime = 5"
	calculator = gets.to_i
	if calculator == 1
		puts "Please enter a number:"
		original = (gets.to_i - 1)
		repeat = original
		num2 = original
		num1 = num2.to_i
		num1 = 0
		num2 = 1
		while repeat >= 0
			total = num2.to_i
			numnext = (num1 + num2).to_i
			num1 = num2.to_i
			num2 = numnext.to_i
			repeat = repeat - 1
		end
		original = original.to_i + 1
		puts "The number corresponding to #{original.to_s} in the fibonacci sequence is, #{total}" 

	elsif calculator == 2
		puts "Welcome to the tax calculator, how much did you spend on your purchase?"
		spend = gets.to_f
		puts "What is the sales tax in your area? (In percent)"
		tax = ((gets.to_f / 100) + 1)
		spend = (tax * spend).round(2)
		puts "The total amount of money spent was, $" + spend.to_s
	elsif calculator == 3
		puts "Enter x1"
		x1 = gets
		puts "x1 = " + x1.to_s + ""
		puts "Enter x2"
		x2 = gets
		changex = x1.to_f - x2.to_f
		puts "x2 = " + x2.to_s + ""
		puts "Enter y1"
		y1 = gets
		puts "y1 = " + y1.to_s + ""
		puts "Enter y2"
		y2 = gets
		puts "y2 = " + y2.to_s + ""
		changey = y1.to_f - y2.to_f
		changex2 = changex / (changex.to_i.gcd(changey.to_i))
		changey2 = changey / (changex.to_i.gcd(changey.to_i))
		if changex2 < 0 
			puts "Your exact slope is #{(changey2.to_f * -1).to_s}/#{(changex2.to_f * -1).to_s}"
			else
				if changex2 == 1 
				puts "Your exact slope is #{changey2.to_s}"
			else
				puts "Your exact slope is #{changey2.to_s}/#{changex2.to_s}"
			end
		end
		puts "Your rounded slope to two decimal places is #{(changey2.to_f / changex2.to_f).round(2)}"
	elsif calculator == 4
		puts "Please enter your number:"
		num = gets.to_i
		original = num
		factorial = (num.to_i) - 1
		while factorial.to_i > 1
			num = factorial.to_i * num.to_i
			factorial = factorial.to_i - 1
		end
		puts "The answer to #{original.to_i.to_s}! is: #{num.to_s}"
	elsif calculator == 5
	 	 puts "What prime number would you like:"
			original = gets.to_i
			repeat = 0
			testnum = 1
			testdivide = 1
			primetest = 0
				while repeat < original
					testnum = testnum + 1
					testdivide = 1
					primetest = 0
					while primetest < 2
						prime = testnum % testdivide
						if prime == 0
							if testdivide == testnum
								primetest = primetest + 5
							else
								primetest = primetest + 1	
							end
						end
						testdivide = testdivide + 1
					end
					if primetest == 6
						repeat = repeat + 1
						print "#{repeat.to_s}.) #{testnum.to_s}  "
					end 
					if primetest == 5
						repeat = repeat + 1
						print "#{repeat.to_s}.) #{testnum.to_s}  "
					end
					totalprime = testnum.to_i
					end
				puts ""
				puts "The corresponding prime number to #{original.to_s} is, #{totalprime.to_s}"	

	end
puts "Would you like to continue? (yes = 1 and no = 2)"
continue = gets.to_i
end
