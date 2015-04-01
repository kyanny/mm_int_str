require 'mongo'
include Mongo
client = MongoClient.new
db = client['testing']
collection = db['foos']
puts 'remove...'
collection.remove()
puts "done. count: #{collection.count()}"
