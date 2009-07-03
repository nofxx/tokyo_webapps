class Order
  include DataMapper::Resource

  property :id, Serial
  property :value, Integer

  belongs_to :item

end
