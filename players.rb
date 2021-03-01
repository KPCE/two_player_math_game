class Players
  def initialize(name)
    @score = 3
    @name = name
  end

  attr_accessor :score, :input, :name

  # def guess(input)
  #   @input = input
  # end
end

#p1 = Players.new
# puts p1
# puts p1.score
# p1.score -= 1
# puts p1.score

# p1.guess(5)
# puts p1.guess(5)