#In IRB, go require './exercise2b.rb'

class SalesTax
	attr_accessor :item, :price, :type, :taxduty, :import, :receipt
	
	def initialize(item, price, type, import)
		@item = item
		@price = price
		@type = type
		@import = import

		if type == "normal"
			@taxduty = 0.1
		elsif type == "exempt"
			@taxduty = 0
		elsif type == "import"
			@taxduty = 0.15
		else
			puts "Error - item type not recognized (must be 'normal', 'exempt', or 'import')"
		end

		if import == "true"
			@taxduty += 0.05
		elsif import == "false"

		else
			puts "Error - import must be true or false"
		end
	end

	def calculate_sales_tax
		@price * @taxduty
	end

	def calculate_total
		@price + calculate_sales_tax
	end

	def receipt
		@receipt = [("Item: " + @item.to_s), ("Price: " + @price.to_s), ("Sales Tax: " + calculate_sales_tax.round(2).to_s), ("Total: " + calculate_total.round(2).to_s)]
		print @receipt
		puts 
	end

end

#Should I make a separate class which takes all of the receipts and adds them to an array?
#How can I get the program to take the sum of all the "calculate_total"s of each variable?


book = SalesTax.new("Book", 12.49, "exempt", "false")

music = SalesTax.new("Music CD", 14.99, "normal", "false")

chocolate = SalesTax.new("Chocolate Bar", 0.85, "exempt", "false")

impchocolate = SalesTax.new("Imported Chocolate", 10.00, "exempt", "true")

impperfume = SalesTax.new("Imported Perfume", 47.50, "normal", "true")

array = [book.receipt, music.receipt, chocolate.receipt]


array2 = [impchocolate.receipt, impperfume.receipt]

totalTax = array.inject(0) {|x, y| x + y.calculate_sales_tax}
    puts "Sales Tax: #{totalTax}"

totalPrice = array.inject(0) {|x, y| x + y.calculate_total}
    puts "Total: #{totalPrice}"


