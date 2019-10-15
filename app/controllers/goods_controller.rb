class GoodsController < ApplicationController
  #before_action :set_good, only: [:show, :edit, :update, :destroy]


def index
    @goods = Good.all
  end
  def new
    @good = Good.new
  end
  def create
   good = Good.create(good_params)
    good.user_id= current_user.id
    good.save
    redirect_to good
  end
  def destroy
    Good.find(params[:id]).destroy
    redirect_to goods_path
  end
  def show
    @good=Good.find(params[:id])
  end
  private
  def good_params
    params.require(:good).permit(:description, :name, :price, :picture)
  end
end