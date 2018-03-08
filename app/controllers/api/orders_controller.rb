class Api::OrdersController < ApplicationController
  def new
  end

  def show
  end

  def index
  end
  
  def set_license
    render :show
  end
  
  private
  
  def orders_params
    params.require(:order).permit(:order_id, :user_id, :shop_id, :license)
  end  
  
end
