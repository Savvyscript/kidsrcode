class UsersController < ApplicationController
  before_action :authenticate_user!


 def index
  	@users = User.all
 end 

 def show
    @user = User.find(params[:id])
    @questions = @user.questions
  end
 
 def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Kids R Code!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end

 