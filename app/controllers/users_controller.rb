class UsersController < ApplicationController
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable, :show

  def show
    @user = User.find(params[:id])
  end
end
