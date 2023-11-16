class Comment < ApplicationRecord
  has_many :users
  has_many :prototypes

	belongs_to :user
	belongs_to :prototype

end
