require('sinatra')
require('sinatra/reloader')
require('./lib/wordfreq')
also_reload('lib/**/*.rb')

get('/') do #The app goes to it's root page, index
  erb(:index) #The index page is displayed to the user
end

get('/wordfreq') do
  @word = params.fetch('word') #the word whose frequency is being determined is pulled from the form
  @string = params.fetch('string') #the sentence being checked for our word is pulled from the form
  @freq = @word.wordfreq(@string) #the frequency is determined using the wordfreq method
  erb(:wordfreq) #The results page (wordfreq) is displayed to the user
end
