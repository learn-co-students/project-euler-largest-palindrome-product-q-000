describe "EvenFibonacci" do
  describe "the attributes for the EvenFibonacci object" do
    let(:fibonacci) { EvenFibonacci.new(10) }

    it 'has a fibonacci_array attribute that is equal to an empty array' do
      expect(fibonacci).to respond_to(:fibonacci_array)
    end

    it 'has an attribute that stores the filtered fibonacci array' do
      expect(fibonacci).to respond_to(:filtered_array)
    end

    it 'has a sum attribute that is equal to the #even_fibonacci_sum method' do
      expect(fibonacci).to respond_to(:sum)
    end
  end

  describe "#filtered_fibonacci_array(limit)" do
    it 'returns the correct filtered array when the limit is 10' do
      expect(EvenFibonacci.new(10).filtered_array).to eq([2, 8])
    end

    it 'returns the correct filtered array when the limit is 100' do
      expect(EvenFibonacci.new(100).filtered_array).to eq([2, 8, 34, 144])
    end
  end

  describe "#even_fibonacci_sum" do
    it 'returns the correct sum when the limit is 10' do
      expect(EvenFibonacci.new(10).sum).to eq(10)
    end

    it 'returns the correct sum when the limit is 100' do
      expect(EvenFibonacci.new(100).sum).to eq(188)
    end

    it 'returns the correct sum when the limit is 4000000' do
      expect(EvenFibonacci.new(4000000).sum).to eq(4613732)
    end
  end
end
