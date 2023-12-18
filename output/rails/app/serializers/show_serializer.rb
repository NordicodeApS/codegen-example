class ShowSerializer
    def self.serialize(show)
        show.as_json(
            :include => {
                :category => {}
            }
        )
    end
end