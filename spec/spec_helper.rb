require './config/environment'

RSpec.configure do |config|
end

def encode(answer)
  Digest::SHA1.hexdigest("#{answer}")
end