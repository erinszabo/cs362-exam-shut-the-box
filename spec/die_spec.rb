require_relative '../lib/die'

describe 'A die' do

  #let(:die){ build(:die) }

  describe 'attributes' do
    it 'has a number of sides' do
      die = Die.new
      expect(die).to respond_to(:number_of_sides)
    end

    it 'has a face value' do
      die = Die.new
      expect(die).to respond_to(:face_value)
    end
  end

  describe 'number of sides' do
    it 'has six sides by default' do
      die = Die.new
      expect(die.number_of_sides).to eq(6)
    end

    it 'can be created with a custom number of sides' do
      die = Die.new(33)
      expect(die.number_of_sides).to eq(33)
    end
  end

  describe 'face value' do
    it 'has a face value of 1 by default' do
      die = Die.new
      expect(die.face_value).to eq(1)
    end
  end

  describe '#to_s string representation' do
    it 'displats the face_value of the die' do
      die = Die.new
      expect(die.to_s).to eq("1")
    end
  end

  describe 'rolling' do
    # Don't spend time testing #roll or #random_face_value. Move on.
  end

end
