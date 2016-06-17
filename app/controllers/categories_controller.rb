class CategoriesController < ApplicationController
	def show
		prdfamily = Prdfamily.find_by(shortname: params[:id])
		@categories = prdfamily.categories
	end
end
