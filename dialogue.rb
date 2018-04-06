require 'erb'
price = 8.75

line_1 = "Bill:   That will cost you <%= price %> plus taxes, ma'am."
line_2 = "Pritma: How much is it with taxes?"
# line_3 = "Bill:  I don't know! I'm not very good at math."

line_3 = "Bill: that will be $<%= (price * 1.13).round(2) %> ma'am" #.round inbuilt method with argument 2 to round to 2 decimal places.

puts
# puts line_1
puts
puts line_2
puts
puts line_3
puts

line_1_erb_instance = ERB.new(line_1)

puts line_1_erb_instance.result #this method is an ERB method for showing output.  


# ^^ you can tighten up the above by doing this
puts ERB.new(line_1).result #instead of creating a local variable. 

line_3_erb_instance = ERB.new(line_3)

puts line_3_erb_instance.result