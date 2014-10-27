describe "#even_fibonacci_sum" do
  it 'returns the correct sum when the limit is 10' do
    expect(even_fibonacci_sum(10)).to eq(10)
  end

  it 'returns the correct sum when the limit is 100' do
    expect(even_fibonacci_sum(100)).to eq(188)
  end

  it 'returns the correct sum when the limit is 4000000' do
    expect(even_fibonacci_sum(4000000)).to eq(4613732)
  end
end
