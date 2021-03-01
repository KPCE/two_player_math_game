class Turns
  def initialize(current_player)
    @current_player = current_player
    @num1 = rand(21)
    @num2 = rand(21)
    @solution = @num1 + @num2
    @winner = false
  end

  def a_turn
    puts "#{@current_player.name}: what does #{@num1} plus #{@num2} equal?"
    @guess = gets.chomp
    if @guess =~ /\A-?\d+\Z/
      #puts "your guess is: #{@guess}"
    else
      puts "please enter a number to guess"
      @guess = gets.chomp
      #puts "your guess is: #{@guess}"
    end

    if @guess.to_i == @solution
      puts "#{@current_player.name}: YES! You are correct."
      @winner = true
    else
      puts "#{@current_player.name}: Seriously? No!"
      puts "your answer was: #{@guess}, the correct answer is: #{@solution}"
    end
  end

  attr_reader :winner
  # def end_turn


end
