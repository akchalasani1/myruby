class Restaurant
  # Public: Initialize a Restaurant.
  #
  # menu - A Hash containing the menu.
  #
  # Examples
  #
  #   Restaurant.new(rice: 3, noodles: 2)
  #   # => #<Restaurant:0x007fbea49b36f0 @menu={:rice=>3, :noodles=>2}>

  def initialize(menu)
    @menu = menu
  end

  # Public: Compute the costs based on the menu.
  #
  # orders - Zero or more Hash orders for which costs are to be calculated.
  #
  # Examples
  #
  #   cost({ rice: 1, noodles: 1 }, { rice: 2, noodles: 2 })
  #   # => 15
  #
  # Returns 0 if no orders given, otherwise Fixnum or Float number of the cost
  # of the given orders.

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) {|cost, key| cost + @menu [key] *order [key]}
    end
  end
end

class Restaurant2
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
# *args as an argument in method definition it means we can pass multiple parameters.
  	total = 0
	  orders.each do |order|
	  	order.each do |item, number|
				total += number * @menu[item]
			end
		end
		total
  end
end

test_menu = {:rice => 4, :noodles => 2} # Price
test_order = {:rice => 2, :noodles => 2} # QTY

#puts Restaurant.new(test_menu).cost(test_order)
puts Restaurant2.new(test_menu).cost(test_order)
