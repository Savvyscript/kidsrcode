class Choice < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :users
  has_many :questions, through: :answers
  has_many :answers, through: :questions
end