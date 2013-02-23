class Item < ActiveRecord::Base
  attr_accessible :name, :total, :use_at, :user_id
  belongs_to :user
  has_and_belongs_to_many :categories
end
