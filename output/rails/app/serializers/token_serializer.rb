class TokenSerializer
  def self.serialize(token)
    token.as_json()
  end
end