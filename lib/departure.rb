require 'departure/engine'

module Departure
	extend ActiveSupport::Autoload

  mattr_accessor :route_options
  self.route_options = {}

   def self.draw_routes(router, opts={})
    self.route_options = opts
    router.instance_exec do
      mount Departure::Engine => '/'
    end
  end

  def self.config(&block)
    @config ||= Migrator::Configuration.new

    yield @config if block

    @config
  end    
end
