/config/routes.rb

http://localhost/tweets/new
Conctroller Name : Tweets
Action Name : new

* How to create a new Action, say new_tweet
{
    resources :tweet, :zombie
    get '/new_tweet' => 'tweets#new', as: 'new_twets'   # as enables the function new_tweets_path() to point to this tweet
    end
}

* Redirect
get '/all' => redirect ('google.com')

* How to make root point to a URL
ie localhost:3010/  -> localhost:3000/tweets

    root to: "tweets#index"

* /zombies/karthik => /zombies#index

TwitterForZombies::Application.routes.draw do
  get '/zombies/:name', to: '/zombies#index', :as => 'graveyard'
end

