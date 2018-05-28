class User < ApplicationRecord
  has_many :assigns
  has_many :projects, through: :assigns
end
