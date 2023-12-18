class UserSerializer
  def self.serialize(user)
    user.as_json()
  end
end