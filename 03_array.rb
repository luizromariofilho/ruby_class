# https://ruby-doc.org/core-2.7.0/Array.html

['a','b','c','d'].each do |l|
  puts l
end
puts

['a','b','c','d'].each_with_index do |l, i|
  puts "letter: #{l}, index: #{i}"
end
puts

old_arr = [1,2,3,4,5,6]
new_arr = old_arr.map do |n|
  n * 2
end

new_arr_2 = old_arr.filter do |n|
  n.odd?
end

new_arr_3 = old_arr.select(&:odd?)

class Place
  def valid?
    [true, false].sample
  end

  def calculate
    5*2
  end
end

[Place.new, Place.new, Place.new].select { |p| p.valid? }
[Place.new, Place.new, Place.new].map { |p| p.calculate }

print "#{old_arr} \n"
print "#{new_arr} \n"
print "#{new_arr_2} \n"
print "#{new_arr_3} \n"
print "#{old_arr.first} \n"
print "#{old_arr.first(3)} \n"
print "#{old_arr.last} \n"
print "#{old_arr.last(3)} \n"
print "1: #{old_arr} \n"
print "2: #{old_arr.select!(&:even?)} \n"
print "3: #{old_arr} \n"


print "#{Array.new(3, true)} \n" 
puts

arr = [1,2,nil,nil,[5,6,7, nil, nil],5,6,7]

print "#{arr} \n"
print "#{arr.compact} \n"
print "#{arr.flatten} \n"
print "#{arr.flatten.compact} \n"
print "#{arr.uniq} \n"
print "#{arr.flatten.compact.uniq} \n"
print "#{arr.flatten.compact.uniq.count} \n" # size (in rails has difference)
print "#{arr.flatten.compact.uniq.sum} \n"
print "#{arr.flatten.compact.uniq.max} \n" # min
puts

puts [].empty?