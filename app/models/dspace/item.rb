module Dspace
  class Item < ActiveRecord::Base
    # I have a table called 'tweets' in the DB
      self.table_name = "item"
  		# set_primary_key :item_id
  end
end