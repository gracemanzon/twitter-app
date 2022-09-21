class TweetsController < ApplicationController
  before_action :authenticate_user
  def index
    @tweets = Tweet.all
    render template: "tweets/index"
  end

  def show
    @tweet = Tweet.find_by(id: params[:id])
    render template: "tweets/show"
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new( 
      # tweet_params
      title: params[:tweet][:title],
      body: params[:tweet][:body],
      image_url: params[:tweet][:image_url],
      user_id: current_user.id
    )

    if @tweet.save
      redirect_to "/"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @tweet = Tweet.find_by(id: params[:id])
    render template: "tweets/edit"
  end

  def update
    @tweet = Tweet.find(params[:id])

    if @tweet.update(tweet_params)
      redirect_to "/"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tweet = Tweet.find_by(id: params[:id])
    @tweet.destroy
    redirect_to "/tweets", status: :see_other
  end

  private

  def tweet_params
    params[:tweet][:user_id] = current_user.id
    params.require(:tweet).permit(:title, :body, :image_url)
  end
end
