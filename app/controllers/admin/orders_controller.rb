class Admin::OrdersController < ApplicationController
	before_action :set_order, only: [ :destroy]
	def index
		@orders = Order.all
	end

	def new

	end

	def create


	end

	def show

	end

	def destroy
		@order.destroy!
	  	respond_to do |format|
	 		format.html { redirect_to admin_orders_path, notice: "Order was successfully destroyed."}
		end
	end

	private
		def set_order
			@order = Order.find(params[:id])			
		end

end
