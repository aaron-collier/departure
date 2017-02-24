require 'cancan'
require 'bootstrap_sb_admin_base_v2'
require 'font-awesome-rails'

module Departure
  class Engine < ::Rails::Engine
  	engine_name 'migrator'

  	config.paths.add "app/models", eager_load: true
  	config.paths.add "app/controllers", eager_load: true
  	config.paths.add "app/views", eager_load: true
  	config.paths.add "app/presenters", eager_load: true
  end
end
