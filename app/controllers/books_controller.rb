class BooksController < ApplicationController
  def new
  end

  def index
      @books = Book.all
  end 
    
  def edit
  end
    
  def book_params
      params.require(:book).permit(:name, :isbn, :status)
  end
end
