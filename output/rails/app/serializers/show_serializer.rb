class ShowSerializer
  def self.serialize(show)
    show.as_json(
      :include => {
        :tickets => {}
      },
      only: [ :id, :name, :description, :category_id, :date, :tickets ],
    )
  end
end