#write your code here
# def translate(str)
	
# 	vowel=%w[a e i o u]
# 	if vowel.include?str[0]
# 		str+"ay"
# 	else
# 		z=str.slice!(0)
# 		str + z+ "ay"
# 	end
# end

# def translate(str)
# 	vowel=%w[a e i o u]
# 	cons=[*'a'..'z']-vowel

# 	if vowel.include?str[0]
# 		str+"ay"
# 	elsif cons.include?str[0]
# 		if cons.include?str[1]
# 			z=str.slice!(0..1)
# 		else
# 			z=str.slice!(0)
# 		end
# 		str + z+ "ay"
# 	end
# end



def translate(str)
	vowel=%w[a e i o u]
	cons=[*'a'..'z']-vowel

	a_str=str.split(" ")

	for i in 0..a_str.length-1
		if vowel.include?a_str[i][0]
			pig_l = a_str[i] + "ay"
			return pig_l.split(",").join("")
		elsif cons.include?a_str[i][0]
			if cons.include?a_str[i][1]
				z=a_str[i].slice!(0..1)
			else
				z=a_str[i].slice!(0)
			end
			pig_l=a_str[i] + z+ "ay"
			return pig_l.split(",").join("")
		end
	end
end

translate("apple, banana, cherry")
translate("eat pie")