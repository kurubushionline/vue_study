class Project < ApplicationRecord
  has_many :assigns
  has_many :users, through: :assigns
end
