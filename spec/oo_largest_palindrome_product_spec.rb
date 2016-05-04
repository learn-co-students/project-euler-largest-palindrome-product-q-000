describe "LargestPalindromeProduct" do
  it 'returns the largest palindrome product of two 3-digit numbers' do
    answer = LargestPalindromeProduct.new.answer
    expect(encode_answer(answer)).to eq("55d264f8671b50b5dbaffa56d1ee719fd429e8f4")
  end
end
