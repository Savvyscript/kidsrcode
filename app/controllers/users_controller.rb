class UsersController < ApplicationController
  before_action :authenticate_user!


 def index
  	@users = Users.all
 end 

 def show
    @user = User.find(params[:id])
    @questions = @user.questions
  end
 

 def new
 	
 end

 def edit
 	
 end

 def create
 	
 end

 def update
 	
 end

 def destroy

 end

end

 