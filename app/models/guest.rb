class Guest < ApplicationRecord
  validates :name, presence: true
  validates :plusone, presence: true
  validates :confirmation, presence: true
  validates :side, presence: true
end