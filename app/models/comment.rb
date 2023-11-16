class Comment < ApplicationRecord
  has_many :users
  has_many :prototypes

	belongs_to :user
	belongs_to :prototype

	validates :content, presence: true

end
