# https://ruby-doc.org/core-2.7.0/Hash.html

h = {
  key: 'value',
  key_2: :value_2,
  key_3: 3,
  key_4: '4'

}

puts h
h.transform_keys!(&:to_s)
puts h

puts

puts h
h.transform_values! do |v|
  if v.respond_to?(:to_i)
    v.to_i
  else
    v.to_s
  end
end
puts h

puts 

person = {
  name: 'Luiz',
  age: 32
}

puts person[:name]
puts h['key']

puts 

class Person
  attr_reader :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def self.create(params)
    p = self.new(name: params[:name], age: params[:age] )
    puts 'saving in database'
    puts "Person: {name: #{p.name}, age: #{p.age}}"
    p
  end
end

p1 = Person.new(name: 'Joao', age: 30)
puts p1.name
puts p1.age
puts 

p2 = Person.create(person)
puts p2.name
puts p2.age
puts 

options = { :font_size => 10, :font_family => "Arial" }
options = { font_size: 10, font_family: "Arial" }

puts Hash["a", 100, "b", 200]           
puts Hash[ [ ["a", 100], ["b", 200] ] ] 
puts Hash["a" => 100, "b" => 200]

puts

h = { a: 1, b: false, c: nil }
puts h
puts h.compact
puts h
puts h.compact!
puts h
puts