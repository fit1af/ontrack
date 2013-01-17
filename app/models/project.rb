class Project < ActiveRecord::Base
  attr_accessible :description, :name, :start_date

  has_many :iterations
  has_many :users
end
