a = 1
b = 0.5
c = 'test'
d = :anything
e = (1..5)
f = lambda { puts 'Hello.' }
h = { key: 'value' }
h1 = { :key => 'value'}
i = true
j = nil
k = [0,1,'banana', true, false, :potato]

def a
  puts 'Hello World.'
end

alias method_2 a

def method_with_block(n,&block)
  n.times do
    yield
  end
end

def method_with_block(n,&block)
  yield(n)
end

def test_unless(i)
  puts i unless i.odd?

  puts i * 2
end

def validate_passwor(pwd)
  return unless pwd.present?

  pwd.size > 10
end

def test(n)
  a = if !(n % 2 == 0) 
        'par'
      end
end

puts a.class
puts b.class
puts c.class
puts d.class
puts e.class
puts f.class
puts h.class
puts i.class
puts j.class
puts k.class
puts

f.call
puts 

method
method_2
puts

method_with_block(3) do
  puts 'content'
end
puts

method_with_block(5) { puts 'other content' }
puts

test_unless(3)
test_unless(6)