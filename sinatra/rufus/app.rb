require "rubygems"
require "sinatra"
require "model/init"
require "model/note"
require "haml"

get '/' do
  redirect '/notes'
end

get '/notes' do
  @notes = Note.all || []
  haml :notes
end

get '/notes/new' do
  @note = Note.new
  haml :new
end

get '/notes/:id/edit' do |id|
  @note = Note.get id
  haml :edit
end

get '/notes/:id' do |id|
  @note = Note.get(id)
  haml :note
end

put '/notes/:id' do |id|
  @note = Note.get id
  @note.update(params[:note])
  redirect "/notes/#{@note.pk}"
end

post '/notes' do
  @note = Note.new(params[:note])
  if @note.save
    redirect "/notes/#{@note.pk}"
  end
end



