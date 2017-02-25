module Dspace
	class CommunityPresenter
		attr_accessor :id

		def initialize(id = nil)
			self.id = id
		end

		def root_communities
			@root_communities ||= Dspace::Community.where('community_id NOT IN (select child_comm_id from community2community)').order(:name)
		end

		def items
		  @items ||= Dspace::CommunitiesToItem.where(community_id: self.id)
		end

		def metadata_fields
			@metadata_fields ||= Dspace::MetadataFieldRegistry.where(metadata_field_id: Dspace::MetadataValue.where(item_id: items.pluck("item_id")).distinct.pluck("metadata_field_id"))
		end
	end
end


##################################################################################################
# -- VARIOUS QUEIRES --
# Notes: This is for development and hand run to test. To be REMOVED
# @item_id_array = Dspace::CommunitiesToItem.where(community_id: 134).pluck('item_id') // Get item_id by community
# Dspace::MetadataValue.where(item_id: @item_id_array).uniq.pluck("metadata_field_id") // Get unique metadata field ids by item_id array
#
##################################################################################################