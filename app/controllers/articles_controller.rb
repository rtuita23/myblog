class ArticlesController < ApplicationController
    
    def index
        @article = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def edit
    end
    
    def new
    end
    
    def create
        @article = Article.new(params.require(:article).permit(:title,:text))
        
        @article.save
        redirect_to @article
    end
    
    private
        def article_params
            params.required(:article).permit(:title, :text)
        end
    
end
