class BooksController < ApplicationController
  def new
  end

  def index
      @books = Book.all.order(params[:sort])
  end 
    
  def edit
      if session[:admin]? @book = Book.find(params[:id]
  end

  def update
      @book = book.find(params[:id])
      if @book.update_attributes(book_params)
        redirect_to('index')
      else
        render('index')
      end
  end          
    
  def book_params
      params.require(:book).permit(:name, :isbn, :status)
  end
end
