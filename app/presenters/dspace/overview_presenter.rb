module Dspace
	class OverviewPresenter
		def total_communities
			@total_communities ||= Dspace::Community.count
		end
	end
end
