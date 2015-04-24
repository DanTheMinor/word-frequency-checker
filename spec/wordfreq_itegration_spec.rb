require('capybara/rspec') #require capybara support for rspec
require('./app') #require sinatra app (app.rb)
Capybara.app = Sinatra::Application #tell capybara it will be testing the Sinatra app

describe('result path', {:type => :feature}) do #the hash :type => :feature is required for capybara
  it("It will return the frequency with which a word appears a sentence") do
    visit('/') #visit the root url
    fill_in('word', :with => 'test') #fills the field word with 'test'
    fill_in('string', :with => 'this is just a test test test') #fills the field string with 'this is just a test test test'
    click_button('Send') #sends the form with parameters filled to it's form action location in app.rb
    expect(page).to have_content(3) #The results page, wordfreq.erb, displays the frequency of the word (3)
  end
end
