class Proposal < ActiveRecord::Base
 validates :user_id, :presence => true
 belongs_to :user
 belongs_to :property
  
 has_many :feedbacks
 has_many :favorites
 has_many :fans, :through => :favorites, :source => :user
end
