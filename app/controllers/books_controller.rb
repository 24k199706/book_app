class BooksController < ApplicationController
  def home
    @categories= Category.all
    if logged_in?
      @post = Post.where(delete_flg: nil).or(Post.where.not(delete_flg: true))
      @post = @post.order(created_at: :desc)
    end
    @like=Like.new
  end
end
