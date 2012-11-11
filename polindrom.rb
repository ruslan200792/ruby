class Polindrom
  def  maxlength(st)
   i=0
   k=0
	for i in 0..st.length do 
		if st[i]==st[i+1] 
			while st[i-k]==st[i+k+1] do
			  k=k+1
			  b=true
			end
		else
		b=false 
		end
	end
   	if b==true 
	   puts "No Polindroms"
	end
	if b==false 
	   puts "MaxPolindrom= #{k*2} symbols"
	end 
   end
end 
p_m=Polindrom.new
s=gets
p_m.maxlength(s)
