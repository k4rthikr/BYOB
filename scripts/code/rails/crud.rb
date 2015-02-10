/* Notes */

t = Tweet.find(3);
# fetches id=3 from tweets table (lowercase + plural)
puts t.msg

Create
t = Tweet.new 
t.status = "Hello"  # or t[:status]
t.save

or pass a hash like JS
# t = Tweet.create

Update
t = Tweet.find(3)
t.zombie = "abc"
t.save

t.attributes = { 
	status: "",
	zombie: "" }
t.save
# Alternative: t.update (a: A, b: B)

Read
Tweet.find(2,3,4)
Tweet.first
Tweet.all

Tweet.count
Tweet.order(:zombie)
Tweet.limit(10)
Tweet.where(zombie: "ash") # array

Method Chaining
Tweet.where(zombie: "ash").order(:status).limit(10)

Delete
Tweet.find(2).destroy

