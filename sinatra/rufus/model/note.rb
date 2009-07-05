class Note
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :body, Text
  property :user_id, Integer
  property :rate, Integer

  # Just playing...need to work on dm-aggregations on tokyo
  def user
    User.get user_id || User.new
  end

  def user=(_user)
    return u.update(_user) if User.get(user_id)
    u = User.new(_user)
    if u.save
      self.user_id = u.id
    end
  end
end

