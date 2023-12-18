class CategorySerializer
  def self.serialize(category)
    category.as_json
  end
end