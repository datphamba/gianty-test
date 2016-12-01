class ArticleController < ApplicationController
    def index
        @article = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def update
        #TODO
    end

    def destroy
        #TODO
    end
    
    def increase_like_count
        @article = Article.find(params[:id])
        @article.increase_like_count
        redirect_to :controller => 'article', :action => 'index'
    end
end
