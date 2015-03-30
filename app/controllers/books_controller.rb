class BooksController < ApplicationController
  def new
  end

  def index
      @books = Book.all.order(params[:sort])
  end 
    
  def edit
      if session[:admin]
          @book = Book.find(params[:id])
      end
  end

  def update
      if session[:admin]
          @book = Book.find(params[:id])
          if @book.update_attributes(book_params)
            redirect_to('index')
          else
            render('index')
          end
      else
          redirect_to @index and return
      end   
  end          
    
  def book_params
      params.require(:book).permit(:name, :isbn, :status)
  end
          
  private
  
  def sort_column
    Book.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
