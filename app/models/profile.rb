class Profile < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_many :projects, dependent: :destroy
end
