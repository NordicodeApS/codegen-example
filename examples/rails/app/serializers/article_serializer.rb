class ArticleSerializer
    def self.serialize(article)
        article.as_json(
            :include => {
                :comments => {}
            }
        )
end