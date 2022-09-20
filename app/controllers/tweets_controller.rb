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
    @tweet = Tweet.new(tweet_params)

    if @tweet.save
      redirect_to @tweet
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
      redirect_to @tweet
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
    params.require(:tweet).permit(:title, :body, :image_url)
  end
end
