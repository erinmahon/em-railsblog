class UsersController < ApplicationController   
  def index  
  	@users = User.all
  end  
  def show
  	@user = User.find(params[:id])
  end
  def new
  	@user = User.new
  end
  def create
    @user = User.create(user_params)
    redirect_to users_path
  end
  def edit
  	@user = User.find(params[:id])
  end
  def update  
  	@user = User.find(params[:id]).update(user_params)
  	redirect_to users_path
  end
  def destroy
  	@user = User.find(params[:id])
  	if @user.destroy
  	  flash[:notice] = "User deleted successfully."
  	else
  	  flash[:alert] = "The was a problem deleting the user."	
  	end
  	redirect_to :back
  end
end

  private
    def user_params
      params.require(:user).permit(:fname, :lname, :email, :password)
     end