class QuestionsController < ApplicationController
  before_action :authenticate_user!


def index
	@questions = Question.get(5)

end

def index
	@questions = Question.get