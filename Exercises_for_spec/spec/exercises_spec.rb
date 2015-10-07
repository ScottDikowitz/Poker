require 'exercises'

describe Array do

  describe "#my_uniq" do

    it "if given empty array, it should return an empty array" do
      expect([].my_uniq).to eq([])
    end


    it "should work with simple array" do
      expect([1].my_uniq).to eq([1])
    end

    it "does not modify original array" do
    var = [1, 2, 3, 3]
    var.my_uniq
      expect(var).to eq([1, 2, 3, 3])
    end

    it "should not return any duplicates" do
      expect([1, 2, 3, 3].my_uniq).to eq([1, 2, 3])
    end

  end

  describe "#two_sum" do

    it "if given empty array, it should return an empty array" do
      expect([].two_sum).to eq([])
    end

    it "if has no matching array, it should return an empty array" do
      expect([1, 1].two_sum).to eq([])
    end

    it "should work with two number arrays" do
      expect([1, -1].two_sum).to eq([[0, 1]])
    end

    it "should work for multiple number array" do

      expect([-1, 0, 2, -2, 1].two_sum.length).to eq(2)

    end
    it "sorts smaller index before larger" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do

    it "if given empty array, should return an empty array" do
      expect([].my_transpose).to eq([])
    end

    it "it should transpose a square matrix" do
      square_m = [[0, 1, 2],[3, 4, 5], [6, 7, 8]]

      expect(square_m.my_transpose).to eq(square_m.transpose)
    end

    it "should transpose a rectangular matrix" do
      rect_matrix = [[0, 1],[3, 4], [6, 7]]

      expect(rect_matrix.my_transpose).to eq(rect_matrix.transpose)
    end

    it "it should transpose a matrix of any size" do
      big_m = [[0, 1, 3, 8, 1, 5, 9], [3, 4, 1, 5, 1, 2, 6]]
      expect(big_m.my_transpose).to eq(big_m.transpose)
    end

    it "should not modify the original matrix" do
      square_m = [[0, 1, 2],[3, 4, 5], [6, 7, 8]]
      square_m.my_transpose
      expect(square_m).to eq([[0, 1, 2],[3, 4, 5], [6, 7, 8]])
    end

  end

  describe "#stock_picker" do
      it "if given empty array, should return an empty array" do
        expect([].stock_picker).to eq([])
      end

      it "if given array of one element, should return an empty array" do
        expect([1].stock_picker).to eq([])
      end

      it "should return array of two indexes if given an array of two elements" do
        expect([50, 100].stock_picker).to eq([0, 1])
      end

      it "the returned array length should always be two" do
        expect([50, 100, 60].stock_picker.length).to eq(2)
      end

      it "should return indexes of the most profitable period" do
        expect([60, 50, 100].stock_picker).to eq([1, 2])
      end

  end

end

describe Towers do

  let(:towers) { Towers.new }
  let(:moved_towers) { Towers.new([[3],[2],[1]])}
  let(:won_towers) { Towers.new([[],[],[3,2,1]])}

  describe "#render" do
    it "should render the board" do
      expect(towers.render).to eq(towers.board)
    end
  end

  describe "#move" do

    it "should pop off from the taking array" do
       expect(towers.move(0,2)[0]).to eq([3,2])
    end

    it "should place the popped element into the target array" do
      expect(towers.move(0,2)[2]).to eq([1])
    end

    it "should place into the beginning of the target array" do
      expect(moved_towers.move(2, 1)[1]).to eq([2,1])
    end

    it "can only be placed on a bigger discs" do
      expect(moved_towers.move(0,1)[1]).to_not eq([2,3])
    end

  end

  describe "#won?" do

    it "should return true if the last array has all the discs" do
      expect(won_towers.won?).to eq(true)
    end

    it "should return false if not all discs are on the last array" do
      expect(moved_towers.won?).to eq(false)
    end

  end
end
