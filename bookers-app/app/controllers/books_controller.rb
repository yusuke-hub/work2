class BooksController < ApplicationController
 def index
    @lists = Book.all
    @newlist = Book.new
    @list = Book.new
 end
  
  def create
    @list = Book.new(list_params)
    if @list.save
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@list.id)
    else
        @lists = Book.all
        @newlist = Book.new
        render action: :index
    end
  end
  
  def show
      @list = Book.find(params[:id])
  end

  def edit
      @list = Book.find(params[:id])
  end
  
  def update
     list = Book.find(params[:id])
     if list.update(list_params)
     flash[:notice] = "Book was successfully created."
     redirect_to book_path(list.id)
     else
     render action :edit
     end
  end
  
  def destroy
      list = Book.find(params[:id])
      list.destroy
      redirect_to index_book_path
  end
  
  private
  def list_params
    params.require( :book).permit(:title, :body)
  end
end
