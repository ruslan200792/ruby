# coding: utf-8
require 'rubygems'
require 'open-uri'
class Find_site
def find(one_site,lvl)
site = Array.new
site[0] = Array.new
site[1] = Array.new
site[2] = Array.new
site[3] = Array.new
site[4] = Array.new
site[5] = Array.new
site[6] = Array.new 
site[0][0] = one_site
i = 0
text = " "
flag = false
	while i < lvl  
      	      k = 0
	      	      until  flag == true   
			     page = open(site[i][k])
	 		     k+=1
        		     flag = true if site[i][k] == nil
			     text << page.read
		      end
              flag = false
              i+=1
              site[i] = text.scan(%r{<a href="(\/[^\/]+?)\/">})
      	      site[i] = site[i] & site[i]
     	      site[i] = site[i].flatten
              sit_size = site[i].size
	      g = 0
		      for g in 0..site[i-1].size-1
	                  n = 0
	              		for n in 0..site[i].size-1
            			    site[i].push(site[i-1][g].to_s + site[i][n].to_s)            
				end
      		      end
              1.upto(sit_size) {site[i].delete_at(0)}
              text = " "
end
if site[lvl].empty?
puts "No #{lvl} levels likn"
else
puts site[lvl]
end
end
end

puts "Enter site(example: gorod.dp.ua)"
one_site ="http://"+ gets.chomp
puts "Enter level(max:6)"
lvl = gets.to_i
f_s = Find_site.new
f_s.find(one_site,lvl)
