- Views
- Model
- Controller
- 

* Controller should be calling the models

/app/controllers/tweets_controller.rb
class TweetsController < ApplicationController
    def show 
        # Name of the view is also "show"
        
    end
end

GET /tweets/1
goes to TweetsController.show
then
/views/tweets/show.html.erb

* How to grant the view access to variables?
    Using @

def show
    @tweet = Tweet.find(1)
end

# In the view
@tweet.staus

* What if you want to use another view? 
    Mention it in the controller

def show 
    render action: 'status' # /views/tweets/status.html.erb
end

* How to get parameters from URL
    params[:d] # params hash

tweets/1
tweets?status=hellodude
    params = {status: hellodude}
tweets?tweet[status]=hello
    params = { tweet: {status: hello }} 
    params[:tweet][:status] # This is how you access it


* This can be used to create objects using create() 
* create() expects a hash as argument. So you can do something like:
    Tweet.create(params[:tweet]) 

* Limit parameters from the URL
    Tweet.create(params.require(:tweet).permit(:status, :location))
* Use STRONG parameters when you create or update

