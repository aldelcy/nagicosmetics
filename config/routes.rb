Rails.application.routes.draw do

	root to: 'site#home'

	devise_for :users

	scope '/store' do
		resources :prdfamilies, shallow: true do
			resources :categories, shallow: true do
				resources :products, shallow: true do
					resources :varations
				end
			end
		end
	end

	get "/home" => 'site#home'
	get "/about" => 'site#about'
	get "/contact" => 'site#contact'
	get "/services" => 'site#services'
	get "/courses" => 'site#courses'
	get "/gallery" => 'site#gallery'
	get "/events" => 'site#events'
	get "/coupons" => 'site#coupons'
	get "/slider" => 'site#slider'

	get "/products" => 'products#allproducts'

end