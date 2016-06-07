class Property < ActiveRecord::Base
 validates :user_id, :presence => true
 belongs_to :user

 has_many :proposals
end
