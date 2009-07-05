require "rubygems"
require "sinatra"
require "andand"
require "model/init"
require "model/note"
require "model/user"
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
  redirect "/notes/#{@note.id}"
end

post '/notes' do
  puts env
  @note = Note.new(params[:note])
  if @note.save
    redirect env['HTTP_REFERER'] =~ /new/ ? "/notes/#{@note.id}" : "notes"
  end
end



