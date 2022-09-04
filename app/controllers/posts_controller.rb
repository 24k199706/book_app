class PostsController < ApplicationController
  before_action :logged_in?, only: [:create] 
  def new
    @post=Post.new
    @categories =Category.all
  end

  def create
    @post=current_user.posts.build(posts_params)
    if @post.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @post=Post.find_by(id: params[:id])
  end

  def destroy
    @post=Post.find_by(id: params[:id])
    @post.delete_flg= true
    @post.save
    redirect_to root_path
  end

  private
    def posts_params
      params.require(:post).permit(:title,:content,:image,category_ids:[])
    end
end
