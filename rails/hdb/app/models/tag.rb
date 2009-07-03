class Tag
  include DataMapper::Resource

  property :pk, Serial
  property :value, String


end
