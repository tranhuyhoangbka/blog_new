class CommentsController < ApplicationController
  before_action :load_article

  def create
    @comment = @article.comments.build comment_params
    if @comment.save
      flash[:success] = "Comment is created!"
      redirect_to @article
    else
      render "articles/show"
    end
  end

  private
  def load_article
    @article = Article.find params[:article_id]
  end

  def comment_params
    params.require(:comment).permit :author_name, :body
  end
end
