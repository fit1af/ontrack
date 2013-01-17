class Iteration < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :project_id, :start_date

  belongs_to :project
end
