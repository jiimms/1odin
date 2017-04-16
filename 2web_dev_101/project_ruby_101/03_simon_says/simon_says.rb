def echo(n)
	n
end

echo("trip")

def shout(n)
	n.upcase
end

# def repeat(n)
# 	n + " " + n
# end

def repeat(n,i=2)
	arr=[]
	i.times do 
	 arr << n
	end
	arr.join(" ")
end

def start_of_word(str, n)
	arr=str.split("")
	arr[0..n-1].join("")
end

def first_word(str)
	arr=str.split(" ")
	arr.shift
end

def titleize(str)
	newarr=[]
	little_words = %w[a are the over and]
	arr=str.split(" ")
	arr.each do |i| 
		i.capitalize! unless little_words.include?(i)
		newarr << i
		newarr[0].capitalize!
	end
	 newarr.join(" ")
end

titleize("jaws are")