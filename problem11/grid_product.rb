require 'matrix'

class GridProduct
  attr_reader :grid
  def initialize(grid_text)
    @grid = Matrix[*gridify(grid_text)]
  end

  def greatest_product
    numbers = []
    @grid.each_with_index do |_, i, j|
      numbers << [
        0.upto(3).reduce(1) {|memo, index| memo * grid[i + index, j].to_i },
        -3.upto(0).reduce(1) {|memo, index| memo * grid[i + index, j].to_i },
        0.upto(3).reduce(1) {|memo, index| memo * grid[i, j + index].to_i },
        -3.upto(0).reduce(1) {|memo, index| memo * grid[i, j + index].to_i },
        0.upto(3).reduce(1) {|memo, index| memo * grid[i + index, j + index].to_i },
        -3.upto(0).reduce(1) {|memo, index| memo * grid[i + index, j + index].to_i },
        0.upto(3).reduce(1) {|memo, index| memo * grid[i - index, j + index].to_i },
        -3.upto(0).reduce(1) {|memo, index| memo * grid[i + index, j - index].to_i },
      ].max
    end
    numbers.max
  end

  private

  def gridify(text)
    text.split("\n").map do |line|
      line.split(/\s+/).map do |cell|
        cell.to_i unless cell.empty?
      end.compact
    end
  end
end
