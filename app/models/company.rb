class Company < ApplicationRecord
  has_many :items

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :email, uniqueness: true
         validates :name, uniqueness: true
end
