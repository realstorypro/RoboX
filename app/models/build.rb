class Build < ApplicationRecord
  enum status: [:created, :deploying, :backup, :active, :destroying]
  belongs_to :blueprint

  validates_uniqueness_of :name
  validates_presence_of :name, :url, :blueprint
end
