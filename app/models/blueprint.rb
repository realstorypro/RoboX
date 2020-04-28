class Blueprint < ApplicationRecord
  has_one :build
  validates_uniqueness_of :name
end

