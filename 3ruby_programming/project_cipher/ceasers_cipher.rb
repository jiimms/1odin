puts "Enter a string"
arr= gets.chomp.split("")
puts "enter shift value"
n=gets.to_i % 26
arr_encrpt = arr.map do |e| 
  if ('A'..'Z') === e
    if e.ord + n > 90
      e.ord + n - 26
    else
      e.ord + n
    end
  elsif ('a'..'z') === e
    if e.ord + n > 122
      e.ord + n - 26
    else
      e.ord + n
    end
  else
    e
  end
end

p arr_encrpt.map {|e| e.chr}.join("")