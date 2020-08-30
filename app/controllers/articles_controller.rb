class ArticlesController < ApplicationController
  
  def index
    articles = Article.all

    render json: {"articles":articles}
  end

  def create
    Article.create({a_id:article_params["a_id"], likes:0})
  end 

  def createLike 
    article = Article.all.find_by({a_id:article_params["a_id"]})
  
    if article
      article.update("likes" => article["likes"]+1)

      render json:{'article':article}, status: 200
    else
      create
      article = Article.all.find_by({a_id:article_params["a_id"]})
      article.update("likes" => article["likes"]+1)

      render json:{'article':article}, status: 201
    end

  end


  private

  def article_params()
    params.require(:article).permit(:a_id)
  end

end
