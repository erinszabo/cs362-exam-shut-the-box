require_relative '../lib/tile'

describe 'A tile' do

  describe 'attributes' do

    it 'has a value' do
      tile = Tile.new(1)
      expect(tile.value).to eq(1)
    end

  end

  describe '#up?' do
    it 'is up by default' do
      tile = Tile.new(1)
      expect(tile.up?).to be_truthy
    end
  end

  describe '#flip' do
    it 'is up after being flipped' do
      tile = Tile.new(1)
      tile.flip
      expect(tile.up?).to be_falsy
    end

    it 'stays down despite being flipped more than once' do
      tile = Tile.new(1)
      tile.flip
      tile.flip
      expect(tile.up?).to be_falsy
    end

  end

  describe '#to_s string representation' do
    context 'when up' do
      it 'shows its value within brackets' do
        tile = Tile.new(1)
        expect(tile.to_s).to eq("[1]")
      end
    end

    context 'when down' do
      it 'shows a space within brackets' do
        tile = Tile.new(1)
        tile.flip
        expect(tile.to_s).to eq("[ ]")
      end
    end
  end

end
