class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.permit(:title, :body)
  end
end
