class Article < ApplicationRecord
  validates :a_id, :likes, :presence => true
  validates :a_id, :uniqueness => true
end
