class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  private
  
  def params
    
  end
  def news_title
    Article.news_title(params[:query].to_s)
    redirect_to root_path
  end
end
