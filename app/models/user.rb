class User < ActiveRecord::Base
  attr_accessible :email, :group_id, :name, :password, :project_id

  belongs_to :project
  belongs_to :group 
end
