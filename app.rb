require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/new_word') do
   erb(:new_word)
end

post('/word_definition') do
  @word = params.fetch('word')
  @definition = params.fetch('definition')
  erb(:word_definition)
end

#need logic here to push word and definition into server
