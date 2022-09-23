class CommentsController < ApplicationController
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.new(comment_params)
    @comment.user = current_user
    @comment.commenter =  @comment.user.first_name + " " + @comment.user.last_name 
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @tweet, notice: 'Review was created succesfully.' }
        format.json { render :show, status: :created, location: @tweet }
      else
        format.html { redirect_to @tweet, alert: 'Review was not saved succesfully.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end  
  end

  def edit
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])
  end

  def destroy
  	@tweet = Tweet.find(params[:tweet_id])
  	@comment = @tweet.comments.find(params[:id])
  	@comment.destroy
  	redirect_to tweet_path(@tweet)
  end

  def update
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])    
    respond_to do |format|
      if @comment.update_attributes(comment_params)
        format.html { redirect_to edit_tweet_comment_path(@tweet, @comment), notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        #format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
 
  private
    def comment_params
      params.require(:comment).permit(:body, :user_id, :tweet_id)
    end
    
end
