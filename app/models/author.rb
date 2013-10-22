class Author < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name

  has_many :authorships
  has_many :books, :through => :authorships
end
