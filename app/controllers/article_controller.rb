class ArticleController < ApplicationController
    def index
        @article = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def update
    end

    def destroy
    end
    
    def increase_like_count
        Article.first.increase_like_count
        redirect_to :controller => 'article', :action => 'index'
    end
end
