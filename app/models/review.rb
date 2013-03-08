class Review < ActiveRecord::Base
  attr_accessible :description, :name

  belongs_to :movie
end
