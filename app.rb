require('sinatra')
require('sinatra/reloader')
require('./lib/wordfreq')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/wordfreq') do
  #write a params.fetch here
  erb(:wordfreq)
end
