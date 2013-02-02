class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :company, :first_name, :last_name
end
