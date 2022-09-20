class TweetsController < ApplicationController
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
    @tweet = Tweet.find_by(id: params[:id])
    @tweet.title = params[:tweet][:title]
    @tweet.body = params[:tweet][:body]
    @tweet.image_url = params[:tweet][:image_url]
    @tweet.save
    redirect_to "/tweets"
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
