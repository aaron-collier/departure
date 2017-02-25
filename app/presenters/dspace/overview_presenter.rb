module Dspace
	class OverviewPresenter
		def total_communities
			@total_communities ||= Dspace::Community.count
		end

		def total_collections
			@total_collections ||= Dspace::Collection.count
		end

		def total_items
			@total_items ||= Dspace::Item.count
		end

		def total_bitstreams
			@total_bitstreams ||= Dspace::Bitstream.count
		end
	end
end
