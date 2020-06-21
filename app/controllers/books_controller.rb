class BooksController < ApplicationController
  def index
    # app/controllers/books_controller # index => app/views/books/index.html
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to books_path
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.assign_attributes(book_params)
    if book.save
      redirect_to books_path
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      redirect_to books_path
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :description)
  end

end