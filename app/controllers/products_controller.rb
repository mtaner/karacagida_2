class ProductsController < ApplicationController
	def show
		@product = product
		render :show
	end

	private

	def product
		PRODUCTS.fetch(product_slug)
	end

	def product_slug
		params[:product_name]
	end

end
