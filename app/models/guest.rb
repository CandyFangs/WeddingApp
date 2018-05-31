class Guest < ApplicationRecord
  validates :name, presence: true
  validates :side, presence: true
end
