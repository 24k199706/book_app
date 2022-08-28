class BooksController < ApplicationController
  def home
    @categories= Category.all
  end
end
