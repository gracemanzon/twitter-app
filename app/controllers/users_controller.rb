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
      image_url: params[:user][:image_url],
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
    @user = User.find_by(id: params[:id]) 
    @user.name = params[:user][:name] || @user.name
    @user.email = params[:user][:email] || @user.email
    @user.image_url = params[:user][:image_url] || @user.image_url

    # @user.password = params[:password] || @user.password
    # @user.password_confirmation = params[:password_confirmation] || @user.password
    if @user.save
      redirect_to "/"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render template: "users/show"
  end

  def index
  @user = User.all
  end


end
