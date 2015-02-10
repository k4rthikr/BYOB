/app/views/
* zombies
* tweets
	* index.html.erb
	* show.html.erb
ERB = Embedded Ruby

show.html.erb

<% tweet = Tweet.dinds(1) %>
<h1><%= tweet.status %> </h1>

<% Execute
<%= Print the result

DRY = Dont Repeat Yourself

/app/views/layouts/application.html/erb
...
<%= yeild %>

show.html.erb
<% ... %>

<% link_to tweet.zombie.name, zombie_path(tweet.zombie) %>
# Alternate Syntax
<%= link_to tweet.zombie.name, tweet.zombie) %>
# Rails knows that it means show zombie view

index.html.erb
<% Tweet.all.each do |tweet| %>
# Tweet.all Array
<tr>
<%= link_to tweet.status, tweet %>
</tr>

<% end %>

# How to show No Tweets Found
<% tweets = Tweet.all %>
<% if tweets.size == 0 %> 
..
<% end %>

# How to edit
<%= link_to "Edit", edit_tweet_path(tweet) %>
<%= lin_to "Delete", tweet, method: :delete %>

if zombie.tweets.size > 1 # The association between zombie and tweets are already done
