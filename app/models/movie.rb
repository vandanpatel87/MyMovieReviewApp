class Movie < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :reviews
end
