class GifticonController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  
  def index
    @items = Item.all
  end

  def new
  end

  def create
    @item = Item.new(item_params)
    @item.save

    redirect_to root_path

  end

  def show
     @item = Item.find_by_id(params[:id])
  end
  
  def update
    @item.update(item_params)
    redirect_to @item
  end
  
  def destroy
    @item.destroy
    redirect_to '#'
  end
  
  def edit
  end
  
<<<<<<< HEAD
  def instruction
  end
  
end
=======
  private
  def set_item
    @item = Item.find_by_id(params[:id])
  end
  
  def item_params
    params.require(:item).permit(:name, :content)
  end
end
>>>>>>> 159f45e4b0180c3640eecaf9e8d554a9749a41d0
