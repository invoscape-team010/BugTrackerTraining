class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def show
    @user = User.where(id: params[:id]).first
  end

  def edit
    @user = User.where(id: params[:id]).first
  end

  def update
    @user = User.where(id: params[:id]).first

    if @user.update_attributes(params[:user])
      redirect_to user_url(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.where(id: params[:id]).first
    @user.destroy
    redirect_to users_url
  end
end
