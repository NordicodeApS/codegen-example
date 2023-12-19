class ArticlesController < ApplicationController
  def index
    render :json => ArticleSerializer.serialize(Article.all)
  end

  def show
    render :json => ArticleSerializer.serialize(Article.find(params[:id]))
  end

  def new
    render :json => ArticleSerializer.serialize(Article.new)
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      render :json => ArticleSerializer.serialize(@article), status: :created
    else
      render :json => { errors: @article.errors }, status: :unprocessable_entity
    end
  end

  def edit
    render :json => ArticleSerializer.serialize(Article.find(params[:id]))
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      render :json => ArticleSerializer.serialize(@article), status: :ok
    else
      render :json => { errors: @article.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    render :json => {}, status: :no_content
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
