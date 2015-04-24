require('rspec')
require('wordfreq')

describe('String#wordfreq') do
  it("It will return 1 if one word matches another word") do
    expect("test".wordfreq("test")).to(eq(1))
  end
end
