class SiteController < ApplicationController

	def home
		@site_title = 'Nagi Cosmetics'
	end

	def about
		@site_title = 'About Nagi'
	end

	def contact
		@site_title = 'Contact Nagi'
	end

	def gallery
		@site_title = 'Gallery'
	end

	def coupons
		@site_title = 'Coupons'
	end

end
