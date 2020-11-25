 a = [1, 5, 3,4,5,6,67,2,3,1,2,3,1,100,20,6,7,4,6]
 h = Hash.new()
 a.each do |i|
   h.key?(i) ? h[i]+=1 : (h.store(i, 1))
 end
h.each {|k, v| puts "#{k} appears #{v} times"}
 