Tweet.find(1) is using the class Tweet in /app/models/tweet.rb
ActiveRecordBase maps it to "tweets"

Validate Models
Class Tweet < ActiveRecord::Base 
	validates_presence_of :status
end

eg:
t = Tweet.new
t.save
> false

t.errors.messages
{status: ["can't be blank"]}

* Has many validations on the box
	numericality_of, length_of, format_of, uniqueness_of, inclusion_of, confirmation_of etc

* Other way
validates :status, presence:true. length: { minimum: 3 }, format: {with: /./*}

#Relationships
Zombie has many Tweets
Zombie
has_many :tweets #(plural)
# Doesnt do anything specific

A Tweet belongs to a Zombie
Tweet
belongs_to :zombie #(singular)
# uses the column zombie_id in Tweet

