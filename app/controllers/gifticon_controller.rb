class GifticonController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  def index
    @items = Item.all
    @items = Item.page(params[:page])
  end

  def new
  end

  def create
    @item = Item.create(item_params)
    @item.save

    redirect_to root_path

  end

  def show
     @item = Item.find_by_id(params[:id])

  end

  def update
    @item = Item.find(params[:id])
    # item.name = params[:name]
    # item.content = params[:content]
    # item.image = params[:image]
    # item.save
    # @item.update(item_params)
    # respond_to do|format|
    #   if @item.update(item_params)
    #     format.html { redirect_to @item, notice: 'Item was successfully'}
    #     format.json { render :show, status: :ok, location: @item }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @item.errors, status: :unprocessable_entity }
    #   end
    # end
    # redirect_to edit_gifticon_path
    authorize_action_for @item
    @item.update(item_params)
    @item.update_attributes(params[:item])
    redirect_to @item
  end

  def destroy
    authorize_action_for @item
    @item.destroy
    redirect_to '#'
  end

  def edit
    authorize_action_for @item
    @user = current_user
    @item = Item.find(params[:id])
    

  end

  def instruction
  end
  
 

  private
  def set_item
    @item = Item.find_by_id(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :content, :image)
  end
end