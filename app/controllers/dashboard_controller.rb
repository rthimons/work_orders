class DashboardController < ApplicationController
  def new_order
  end

  def new_list
  end

  def view_list
     
     @list = List.find(params[:id]) if params[:id]
  end

  def view_order
   @order = Order.find(params[:id])
  end
end
