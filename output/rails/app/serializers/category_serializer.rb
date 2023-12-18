class CategorySerializer
  def self.serialize(category)
    category.as_json(
      only: [ :id, :name, :description ],
    )
  end
end