class ShowSerializer
  def self.serialize(show)
    show.as_json
  end
end