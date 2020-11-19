a = ["hello", "hi"]
a.map! { |string| string.upcase }
a.each do |str|
    puts str
end