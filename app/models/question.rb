class Question < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :answers
  has_many :choices, through: :users

  def self.create_questions
     questions = HTTParty.get('https://opentdb.com/api.php?amount=10&category=18&difficulty=easy&type=multiple')
     
  end
end
  
 