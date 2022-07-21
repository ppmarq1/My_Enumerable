require_relative './enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

p(list.all? { |item| item < 5 })

p(list.all? { |item| item > 5 })

p(list.any? { |item| item == 2 })

p(list.any? { |item| item == 5 })

p(list.filter(&:even?))
