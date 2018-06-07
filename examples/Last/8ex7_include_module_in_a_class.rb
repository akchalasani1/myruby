require "./8ex6_include_embed_module_in_a_class"

class Decade
	include Week 	# include 'Week' module into class 'Decade'
	no_of_yrs = 10		# Variable

	def no_of_months
		puts Week::FIRST_DAY
		number = 10*2
		puts number
	end

end

d1 = Decade.new
puts
Week::FIRST_DAY
Week::weeks_in_month
Week::weeks_in_year
d1.no_of_months


