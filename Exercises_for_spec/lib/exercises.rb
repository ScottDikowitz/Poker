class Array

  def my_uniq
    uniques = []
    self.each {|num| uniques << num unless uniques.include?(num) }
    uniques
  end

  def two_sum
    index_arr = []

    (0...count).each do |first_num_idx|
      ((first_num_idx + 1)...count).each do |second_num_idx|
        sum = self[first_num_idx] + self[second_num_idx]
        index_arr << [first_num_idx, second_num_idx] if sum == 0
      end
    end
    index_arr
  end

  def my_transpose
    transposed_m = []
    return [] if self.empty?
    (0...self[0].count).each do |row_i|
      temp = []
      (0...count).each do |col_i|
        temp << self[col_i][row_i]
      end
      transposed_m << temp
    end
    transposed_m
  end

  def stock_picker
    indexes = []
    most_profit = 0

    (0...count).each do |first_day|
      ((first_day + 1)...count).each do |last_day|

        profit = self[last_day] - self[first_day]

        if profit > most_profit
          most_profit = profit
          indexes = [first_day, last_day]
        end
      end
    end

    indexes
  end

end

class Towers
  attr_reader :board, :num_discs
  def initialize(board = [[3, 2, 1], [], []])
    @board = board
    @num_discs = board.flatten.length
  end

  def render
    p self.board
  end

  def move(from_tower, to_tower)
    unless self.board[from_tower].empty?
      disk = self.board[from_tower].pop

      self.board[to_tower] << disk if self.board[to_tower].empty? || self.board[to_tower].last > disk
    end
    self.board
  end

  def won?
    self.board.last.count == num_discs
  end

end
