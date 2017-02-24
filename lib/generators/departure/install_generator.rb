module Departure
	class Install < Rails::Generators::Base
		def inject_routes
			inject_into_file 'config/routes.rb', before: /end/ do
				"  root 'departure/homepage#index\n"\
				"  resources :communities"
			end
		end

    def inject_styles
    	inject_into_file 'app/assets/stylesheets/application.css', after: /require_self\n/ do
        " *= require font-awesome\n"\
        " *= require bootstrap_sb_admin_base_v2\n"
      end
    end

	end
end
