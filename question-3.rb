str = "hello"

#1st way
def capitalizeString(str)
    return str.capitalize()
end

puts capitalizeString(str)

#2nd way
#This actually capitalizes the first character of every words
puts str.gsub(/[A-Za-z']+/,&:capitalize)