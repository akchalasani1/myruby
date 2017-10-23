  def chk_paldrm(value)

      if value.to_s == value.to_s.reverse
        puts "Number you have entered is a Palindrome #{value}"

      else value.to_s != value.to_s.reverse
        puts "#{value} is not a palindrome number"

      end
  end

print "Enter any number: "
num = gets.to_i
chk_paldrm(num)