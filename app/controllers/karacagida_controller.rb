class KaracagidaController < ApplicationController

	def about_us
		render :about_us
	end

	def certificates
		render :certificates
	end

	def production
		render :production
	end

	def products
		@products = all_products
		render :products
	end

	def socialcont
		render :socialcont
	end

	private

	def all_products
		PRODUCTS
	end

end
