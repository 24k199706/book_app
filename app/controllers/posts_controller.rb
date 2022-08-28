class PostsController < ApplicationController
  def new
    @post=Post.new
    @categories=Category.all
  end

  def create
    @post=current_user.posts.build(posts_params)
    @category = Post.category.find_by(id: params[:id])
    if @post.save
      redirect_to root_path
    end
      render "new"
  end

  def show
    @post=Post.find(params[:id])
  end

  def destroy
    @post.delete_flg=true
    @post.save
    redirect_to root_path
  end

  private
    def posts_params
      params.require(:post).permit(:title, :user_id,:category_id,:content,:image)
    end
end
