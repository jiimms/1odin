# class Book

# 	def title
# 	@title
# 	end

#  def title=(name)
#  	@title=name.capitalize
#  end
# end

# class Book

# 	def title
# 	@title
# 	end

#this one works and all tests pass

#  def title=(name)
#  	exceptions=%w[a and for in the of an]
#  	@title=name.split(" ")
 	
#  	z=@title[1..-1].each {|r| r.capitalize! unless exceptions.include?(r)}
#  	z.unshift(@title[0].capitalize!)
#  	@title=z.join(" ") 
 	
#  end
# end

# s=Book.new
# s.title=("the burning in train")
# s.title=("inferno")


class Book

    def title
    @title
    end

 def title=(name)
     exceptions=%w[a and for in the of an]
     @title=name.capitalize!.split(" ")
     
     @title[1..-1].each {|r| r.capitalize! unless exceptions.include?(r)}
     @title.join(" ")
     # print @title.class
     
 end
end

s=Book.new
print s.title=("the burning in train")
print s.title=("inferno")