class Item
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :nullable => false, :length => (2..20)
  property :info, Text

  has n, :orders

  def to_param
    id.to_s
  end
end
