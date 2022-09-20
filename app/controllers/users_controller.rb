class UsersController < ApplicationController
  before_action :authenticate_user, except: [:new, :create]
  # before_action :current_user, except: [:new, :create]

  def new
    @user = User.new
    render template: "users/new"
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
    )
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
    render template: "users/edit"
  end

  def update
    @user = Photo.find_by(id: params[:id])
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.save
    redirect_to "/"
  end

  def show
    @user = User.find_by(id: params[:id])
    render template: "users/show"
  end


end
