require('sinatra')
require('sinatra/reloader')
require('./lib/wordfreq')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/wordfreq') do

  @word = params.fetch('word') #the word whose frequency is being determined is pulled from the form
  @string = params.fetch('string') #the sentence being checked for our word is pulled from the form
  @freq = @word.wordfreq(@string) #the frequency is determined using the wordfreq method
  #binding.pry
  erb(:wordfreq)
end
