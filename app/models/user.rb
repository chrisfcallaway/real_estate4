class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :proposals
  has_many :properties
  has_many :favorites
  has_many :feedbacks
  has_many :favorited_proposals, :through => :favorites, :source => :proposal
end
