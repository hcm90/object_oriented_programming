class Goods
	def initialize
		@tax_rate = 0.1
	end
	def calculate_sales_tax(price)
		@price * @tax_rate
	end

	def calculate_total(price)
		calculate_sales_tax + @price
	end
end

class ExemptGoods < Goods
	def initialize
		@tax_rate = 0
	end
end

class ImportGoods < Goods
	def initialize
		@tax_rate = 0.5
	end
end

book = ExemptGoods.new