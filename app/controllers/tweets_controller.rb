class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :show]
  before_action :set_tweet, only: [:edit, :show]


  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def edit
  end

  def show
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end

private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:text).merge(user_id: current_user.id)
  end

end
