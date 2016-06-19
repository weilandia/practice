node1 = ["a", node2]
node2 = ["b", node3]
node3 = ["c", nil]

puts "A: #{node1[0]}"
puts "B: #{node1[1][0]}"
puts "C: #{node1[1][1][0]}"


node3 = {data: "c", link: nil}
node2 = {data: "b", link: node3}
node1 = {data: "a", link: node2}

puts "A: #{node1[:data]}"
puts "B: #{node1[:link][:data]}"
puts "C: #{node1[:link][:link][:data]}"

class Node
  attr_reader :data, :link
  def initialize(data, link)
    @data = data
    @link = link
  end
end

c = Node.new("c",nil)
b = Node.new("b",c)
a = Node.new("a",b)

puts "A: #{a.data} \nB: #{a.link.data} \nC: #{a.link.link.data}"
