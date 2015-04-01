require 'mongo'

include Mongo
client = MongoClient.new
db = client['testing']
collection = db['foos']
collection.find().each{|doc| p [doc, doc['foo'].class]}
