module Dspace
	class CommunityPresenter
		def root_communities
			@root_communities ||= Dspace::Community.where('community_id NOT IN (select child_comm_id from community2community)').order(:name)
		end

		def items
		  # @items ||= Dspace::Item.where(item_id: Dspace::CommunitiesToItem.find_by(community_id: params[:id]).item_id)
		end
	end
end
