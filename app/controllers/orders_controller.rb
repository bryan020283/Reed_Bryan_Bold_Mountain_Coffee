class OrdersController < ApplicationController

	def new
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
		respond_to do |format|
			if @order.save
				format.html{render :new, notice: "Order has been created!"}
			else
				format.html{render :new, @order.errors, status: :unprocessable_entity}
			end
		end
	end

	private
		def set_order
			@order = Order.find(params[:id])			
		end

		def order_params
			params.require(:order).permit(:java_qty, :beans_qty, :sandwich_qty, :order_notes, :pick_up_time)
		end
end
