class Factor_search
	def initialize(string)
	   @string=string
	end

        def two_consecutive
           i=0
           factor_max=0
	   factor_min=100
		for i in 0..@string.length do 
			if (@string[i]==@string[i+1])
			     
				while @string[i-factor_max]==@string[i+factor_max+1] do
			  	   factor_max=factor_max+1
			           flag=true      
				end
			else
			   flag=false 
			end
                          if(factor_max<factor_min and factor_max>=1) then factor_min=factor_max end
	end
             return flag,factor_max*2 ,factor_min*2
	end

	def after_one
           i=0
           factor_max1=0
           factor_min1=100
                for i in 0..@string.length do
                        if (@string[i]==@string[i+2])
                                while @string[i-factor_max1]==@string[i+factor_max1+2] do
                                   factor_max1=factor_max1+1
                                   flag1=true
			
                                end
                        else
                           flag1=false
                        end
                            factor_min1=factor_max1 if (factor_min1>factor_max1 and factor_max1>=1)
     
 
                end
             return flag1,factor_max1*2+1,factor_min1*2+1
        end
end
class Polindrom	
	def max(string)
		flag_after_one=false
		pol=Factor_search.new(string)
		flag,factor_max,factor_min=pol.two_consecutive
		flag1,factor_max1,factor_min1=pol.after_one
                   
		 if factor_max1>factor_max then
                           factor_max=factor_max1
                           flag_after_one=true
                        end
		puts "No Polindroms" if (flag and flag1) 
	   	puts "MaxPolindrom=#{factor_max} symbols" if (!flag and !flag_after_one) 
        	puts "MaxPolindrom=#{factor_max} symbols" if (!flag1 and flag_after_one)
	end
        

	 def min(string)
                pol=Factor_search.new(string)
                flag,factor_max,factor_min=pol.two_consecutive
                flag1,factor_max1,factor_min1=pol.after_one
                
                if factor_min1>factor_min then 
                   factor_min=factor_min1 
 		   flag_after_one=true
		end	
                puts "No Polindroms" if (flag and flag1)
                puts "MinPolindrom=#{factor_min} symbols" if (!flag and !flag_after_one)
		puts "MinPolindrom1=#{factor_min} symbols" if (!flag and flag_after_one)

        end

end 
string=gets
p_m=Polindrom.new
p_m.max(string)
p_m.min(string)
 
