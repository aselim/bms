class Customer < ActiveRecord::Base
  has_many :projects, :foreign_key => :Customer , dependent: :destroy
  
end
