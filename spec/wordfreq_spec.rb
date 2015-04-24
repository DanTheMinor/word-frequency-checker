require('rspec')
require('wordfreq')
require('pry')

describe('String#wordfreq') do
  it("It will return 1 if one word matches another word") do
    expect("test".wordfreq("test")).to(eq(1))
  end

  it("It will return 0 if a word does not match another word") do
    expect("test".wordfreq("bog")).to(eq(0))
  end

  it("It will return the frequency of a word in a sentence") do
    expect("test".wordfreq("this is just a test of a test of a test")).to(eq(3))
  end
end
