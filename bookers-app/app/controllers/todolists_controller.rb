class TodolistsController < ApplicationController
 def index
    @lists = List.all
    @newlist = List.new
    @list = List.new
 end
  
  def create
    @list = List.new(list_params)
    if @list.save
    redirect_to todolist_path(@list.id),notice:"Book was successfully created."
    else
        @lists = List.all
        @newlist = List.new
        render action: :index
    end
  end
  
  def show
      @list = List.find(params[:id])
  end

  def edit
      @list = List.find(params[:id])
  end
  
  def update
     list = List.find(params[:id])
     list.update(list_params)
     redirect_to todolist_path(list.id)
  end
  
  def destroy
      list = List.find(params[:id])
      list.destroy
      redirect_to index_todolist_path
  end
  
  private
  def list_params
    params.require( :list).permit(:title, :body)
  end
end
