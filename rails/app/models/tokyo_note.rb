class TokyoNote
  include DataMapper::Resource

  property :pk, Serial
  property :title, String
  property :body, Text
  property :rate, Integer

  def to_param
    pk.to_s
  end
end
