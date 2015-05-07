require_relative '../config/environment'

RSpec.configure do |config|
  # config here
end

def encode(answer)
  answer.class == Fixnum ? process_encoding(answer) : raise_error
end

def process_encoding(answer)
  Digest::SHA1.hexdigest("#{answer}")
end

def raise_error
  raise TypeError, 'Please return an Fixnum'
end