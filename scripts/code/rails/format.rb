# Formats uspported
# RoR can be used to write backend API's, especially REST

/tweets/1.json

# To make this URI return the JSON

TweetsController
def show
    @tweet = Tweet.find(params[:id])
    respond_to do {format}
        format.html # This is to support show.html.erb
        format.json { render json: @tweet }
        format.xml { render xml: @tweet } # To support /tweets/1.html
    end
end
end

Actions
* show
* index
* destroy
* new
* edit

We need to write the views for all of these

eg:
def edit
    @tweel = Tweet.find(params[:id])
end

and then the view for EDIT

# Adding simple AUTHorization
# Suppose you dont want all users to perform EDIT action

TweetsController
def edit 
    @tweet = Tweet.find(params[:id])
    if session[:zombie_id] != @tweet.zombie_id
        flash[:notice] = "Sorry, you cant edit this."
        redirect_to(tweets_path)  # You can remove the above line, and pass notice: 'MSG' as second argument
    end
end

# session is a hash per user
# flash is a hash used to store alerts?
# redirect_to to redirect browser

# Now edit layout

/laouts/application.erb

<% if flash{:notice] %>
    <div<%= flash[:notice] %></div>
<% end %>


# EDIT, UPDATE, DELETE have code to be shared
# DRY!

TweetsController
    before_action :get_tweet, only: [:edit, :update, :destroy]
    before_action :check_auth, only: [:edit, :update, :destroy]
    def get_tweet 
        @tweet = Tweet.find(params[:id])
    end
    def check_auth
    ..
end


