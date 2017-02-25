module Departure
	class Install < Rails::Generators::Base
		def inject_routes
			inject_into_file 'config/routes.rb', before: /end/ do
				"  root 'departure/homepage#index'\n"\
				"  get '/communities', controller: 'dspace/community', action: :index\n"\
        "  namespace :dspace do\n"\
        "    resources :community\n"\
        "  end\n"
			end
		end

    def inject_styles
    	inject_into_file 'app/assets/stylesheets/application.css', after: /require_self\n/ do
        " *= require font-awesome\n"\
        " *= require bootstrap_sb_admin_base_v2\n"
      end

      inject_into_file 'app/assets/stylesheets/application.css', after: /*\/\n/ do
      	"@import \"font-awesome\";\n"
      end
    end

    def inject_javascript
    	inject_info_file 'app/assets/javascripts/application.js', after: /require_tree .\n/ do
    		"//= require bootstrap_sb_admin_base_v2\n"
    	end
    end
	end
end
