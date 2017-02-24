class Departure::HomepageController < ApplicationController

	layout 'departure'

  def index
    @overview_presenter = Dspace::OverviewPresenter.new
  end
end
