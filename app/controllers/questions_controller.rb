class QuestionsController < ApplicationController
  before_action :authenticate_user!


  def index
	@questions = questions_response['results']
  end

  private

  def questions_response
  	 HTTParty.get('https://opentdb.com/api.php?amount=10&category=18&difficulty=easy&type=multiple')
  end
end