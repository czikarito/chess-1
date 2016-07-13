require 'figure/knight'

describe Figure::Knight do

  describe '#possible_coordinates' do
    context 'when knight is starting' do

      context 'at least two fields from border' do
        pending 'returns 8 possible coordinates for next move'
      end

      context 'in the corner of the board' do
        let(:knight) { Figure::Knight.new(1, 1) }
        it 'returns 2 possible coordinates for next move' do
          expect(knight.possible_coordinates.sort).to eql([[2, 3], [3, 2]])
        end
      end
    end
  end
end
