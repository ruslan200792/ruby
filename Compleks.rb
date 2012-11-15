class Compleks_number
        def initialize(real_part1,real_part2,img_part1,img_part2) 
            @real_part1,@real_part2,@img_part1,@img_part2=real_part1,real_part2,img_part1,img_part2
	end

	def plus
            puts "(#{@real_part1}+#{@img_part1}i)+(#{@real_part2}+#{@img_part2}i)=(#{@real_part1 + @real_part2}+#{@img_part1 + @img_part2}i)"
	end    

	def minus
            puts "(#{@real_part1}+#{@img_part1}i)-(#{@real_part2}+#{@img_part2}i)=(#{@real_part1 - @real_part2}+#{@img_part1 - @img_part2}i)"
        end

	def multiply
            puts "(#{@real_part1}+#{@img_part1}i)*(#{@real_part2}+#{@img_part2}i)=(#{(@real_part1 * @real_part2)-(@img_part1 * @img_part2)}+#{(@img_part1 * @real_part2) + (@real_part1 * @img_part2)}i)"
        end

	def divide
            puts "(#{@real_part1}+#{@img_part1}i)/(#{@real_part2}+#{@img_part2}i)=(#{((@real_part1 * @real_part2)+(@img_part1*@img_part2))/((@real_part2 ** 2)+(@img_part2 ** 2))}+#{((@img_part1*@real_part2) - (@real_part1*@img_part2))/((@real_part2 ** 2)+(@img_part2 ** 2))}i)"
        end

end
puts "Enter first number"
puts "Real part"
real_part1=gets.to_f
puts "Imaginary part"
img_part1=gets.to_f
puts "Enter second number"
puts "Real part"
real_part2=gets.to_f
puts "Imaginary part"
img_part2=gets.to_f
puts "Enter operation(+,-,/,*)"
operation=''
operation=gets
compleks=Compleks_number.new(real_part1,real_part2,img_part1,img_part2)
case operation
	when "+\n"
            compleks.plus
        when "-\n"
     	    compleks.minus
	when "*\n"
            compleks.multiply
	when "/\n"
            compleks.divide
end



     
