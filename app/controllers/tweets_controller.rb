class TweetsController < ApplicationController

  def create
    tweet = current_user.tweets.build(tweet_params)
    if tweet.save
      flash[:success] = 'Tweet created'
      redirect_to root_url
    else
      flash[:danger] = 'Failed, Tweet not created'      
    end
  end

  def destroy
    tweet = current_user.tweets.find(params[:id])
    tweet.destroy
    redirect_to root_url
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
