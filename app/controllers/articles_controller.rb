class ArticlesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]
  
  def index
    @articles = Article.order(created_at: :desc)
  end 

   def show
      @article = Article.find(params[:id])
  end

  def new
  end

  def create
      # render plain: article_params[:article].inspect
      @article = Article.new(article_params)
      if @article.save
        redirect_to @article
      else
        render action: 'new'
      end
  end

  def edit
      @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
        redirect_to @article
      else
        render action: 'edit'
      end
  end

  def destroy
      @article = Article.find(params[:id])
      if @article.destroy
      redirect_to articles_path
      end
  end

  private

  def article_params
    params.require(:article).permit(:title,:text)

  end

end
