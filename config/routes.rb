Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'hello/index' => 'hello#index'
  root 'hello#index' 

  get 'hello/link' => 'hello#link'

  get 'tweets' => 'tweets#index'

  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'
  get 'tweets/:id' => 'tweets#show',as: 'tweet'
  patch 'tweets/:id' => 'tweets#update'
  delete 'tweets/:id' => 'tweets#destroy'
  get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'

end


def create
  tweet = Tweet.new(tweet_params)
    if tweet.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
    

end

