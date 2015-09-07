class TagsController < ApplicationController
  before_action :load_tag, except: :index

  def index
    @tags = Tag.all
  end

  def show
  end

  def destroy
    @tag.destroy
    flash[:success] = "Tag is deleted!"
    redirect_to tags_path
  end

  private
  def load_tag
    @tag = Tag.find params[:id]
  end
end
