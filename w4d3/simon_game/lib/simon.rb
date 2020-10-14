class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
   
    @game_over = false
    @seq = [] 
    @sequence_length = 1
  end

  def play
    until @game_over
      take_turn
    end
    if @game_over
      game_over_message
      reset_game
    end

  end

  def take_turn
      show_sequence
      @sequence_length += 1
      require_sequence
      if @game_over
        reset_game
      else
        round_success_message
      end  
  end

  def show_sequence
    add_random_color
    puts "-------------------------------------"
    puts "'Sequence is: #{@seq.join(" ").upcase}'"
    puts "-------------------------------------"
  end

  def require_sequence
    p "Enter the sequence"
    puts
    input = gets.chomp
    if input.downcase.split(" ") != @seq
      
      game_over_message
      @game_over = true
      
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts
    p "That's correct"
    puts
  end

  def game_over_message
    p "That's wrong. Game over"
    puts
    puts
  end

  def reset_game
    @seq = []
    @game_over = false
    @sequence_length = 1

  end
end

simon = Simon.new
simon.play
