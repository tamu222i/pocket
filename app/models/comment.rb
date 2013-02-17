class Comment < ActiveRecord::Base
  attr_accessible :body, :item_id
end
