class UserSerializer
  def self.serialize(user)
    user.as_json(
      only: [ :id, :name, :email, :roleEnum ],
    )
  end
end