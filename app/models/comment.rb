class Comment < ApplicationRecord
  has_many :users
  has_many :prototypes
end
