require('rspec')
require('anagrams')

describe('String#word_freq') do
  it("It will return 1 if one word matches another word") do
    expect("test".word_freq("test")).to(eq(1))
  end
end
