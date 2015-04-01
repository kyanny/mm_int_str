require 'mongo_mapper'

MongoMapper.database = 'testing'

class Foo
  include MongoMapper::Document
  key :foo, String
end

p [foo = Foo.find_one, foo.foo.class]
