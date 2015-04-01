require 'mongo_mapper'

MongoMapper.database = 'testing'

class Foo
  include MongoMapper::Document
  key :foo, Integer
end

p [foo = Foo.create(foo: 1), foo.foo.class]
