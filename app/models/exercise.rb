class Exercise < ActiveRecord::Base
  belongs_to :user
  attr_accessible :activity, :units, :value, :user_id
end
