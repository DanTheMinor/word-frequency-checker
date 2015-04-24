require('rspec') #for compiling
require('wordfreq') #the method for checking word frequency
require('pry') #for troubleshooting

describe('String#wordfreq') do
  it("It will return 1 if one word matches another word") do
    expect("test".wordfreq("test")).to(eq(1))
  end

  it("It will return 0 if a word does not match another word") do
    expect("test".wordfreq("bog")).to(eq(0))
  end

  it("It will return the frequency with which a word appears a sentence") do
    expect("test".wordfreq("this is just a test of a test of a test")).to(eq(3))
  end

  it("It will return 0 if a word is not contained in a sentence") do
    expect("test".wordfreq("this is just a")).to(eq(0))
  end
end
