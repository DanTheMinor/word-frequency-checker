require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('result path', {:type => :feature}) do
  it("It will return the frequency with which a word appears a sentence") do
    visit('/')
    fill_in('word', :with => 'test')
    fill_in('string', :with => 'this is just a test test test')
    click_button('Send')
    expect(page).to have_content(3)
  end
end
