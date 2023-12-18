class TokenSerializer
  def self.serialize(token)
    token.as_json(
      only: [ :bearerToken, :expireDate ],
    )
  end
end