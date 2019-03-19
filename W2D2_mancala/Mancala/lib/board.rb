class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    @players = [name1, name2]
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, i|
      if (0..5).include?(i) || (7..12).include?(i)
        4.times {cup << :stone }
      end 
    end 
  end

  def valid_move?(start_pos)
    if @cups[start_pos] == nil 
      raise "Invalid starting cup"
    elsif @cups[start_pos].length == 0
      raise "Starting cup is empty"
    end 
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos].length
    next_cup_idx = start_pos + 1
    @cups[start_pos].shift until @cups[start_pos].length == 0


    until stones == 0 
      if next_cup_idx != 13 && current_player_name == @players[0]
        @cups[next_cup_idx] << :stone 
        next_cup_idx = (next_cup_idx + 1) % 14
        stones -= 1
      elsif next_cup_idx != 6 && current_player_name == @players[1]
        @cups[next_cup_idx] << :stone 
        next_cup_idx = (next_cup_idx + 1) % 14
        stones -= 1  
      else 
        next_cup_idx = (next_cup_idx + 1) % 14
      end 
    end 

    # render 
    # next_turn 
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
