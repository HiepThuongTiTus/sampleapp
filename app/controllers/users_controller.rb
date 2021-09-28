class UsersController < ApplicationController
  
  # GET /users/1 or /users/1.json
  def show
    @user = User.find_by id: params[:id]
    return if @user
    flash[:warning] = t ".user_not_found"
    redirect_to new_user_path
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t "welcome_to_the_sample_app!"
      redirect_to @user
    else
      render :new
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end
end
