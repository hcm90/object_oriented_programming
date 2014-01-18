=begin What is an object?
An object is an object, quite simply. It has state and a behaviour.
A gas pump’s state is the gas price. If it’s a gas tank, it needs to know whether or not it’s empty or what the fuel level is.
An object’s behaviour is what you can ask the object to do. You can ask your chequing account to display your balance, to deposit, withdrawal, transfer…
Advantages of objects include the fact that they can create something that can be understood and reasoned about. Don’t care how it works, just what it can do
State is private - date
Behaviour is public - methods
The defining characteristic of a mustang is that you buy the car and you modify it.
Tell, don’t ask. You tell the object to perform some task and return the result.
Classes and Objects
A class is a blueprint - the factory. The concrete instantiation of the class is the object.
The factory is the class. The object is the product.
=end


class SalesTax #The superclass. Classes in ruby have to start with a capital letter
	def initialize # This needs to always be spelled this way. To instantiate an object you MUST use def initialize.
		@tax_rate = 0.13 #This is an instance variable. The @ means it's available to any method inside the class.
	end

	def calculate_sales_tax(price)
		price * @tax_rate
	end

	def calculate_total(price)
		price + calculate_sales_tax #We've placed a method inside a method!!!
	end
end

class FoodTax < SalesTax #The subclass. REMEMBER, CAPITALIZE!!!
	def initialize
		@tax_rate = 0
	end
end

#FoodTax inherits the properties of salestax. Is a Honda Civic a child of Honda? No; otherwise a Civic would also know how to sell cars.
#Any time you pass one object to another object, that's a collaborator. A Door and a Brake Pedal are parts of a Car.
#Similarly, a Car has a Door and a Brake Pedal.


