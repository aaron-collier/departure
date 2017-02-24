class Dspace::CommunityController < ApplicationController

	layout 'dspace_migrator'


  def index
    @community_presenter = Dspace::CommunityPresenter.new
  end

  def show
    @community = Dspace::Community.find(params[:id])
    # @items = Dspace::Item.where(item_id: Dspace::CommunitiesToItem.where(community_id: params[:id]).item_id).find_each
    # @items = Dspace::Item.join(Dspace::CommunitiesToItem: .where(community_id: params[:id]).item_id).find_each
  end
end

#
#Article.joins(comments: :guest)
#
#SELECT articles.* FROM articles
#  INNER JOIN comments ON comments.article_id = articles.id
#  INNER JOIN guests ON guests.comment_id = comments.id
