class Note
  include DataMapper::Resource

  property :pk, Serial
  property :title, String
  property :body, Text
  property :rate, Integer

end
