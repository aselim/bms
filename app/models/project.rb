class Project < ActiveRecord::Base
  belongs_to :customer, :foreign_key => :name
  has_many :milestones
end
