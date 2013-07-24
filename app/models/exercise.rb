class Exercise < ActiveRecord::Base
  belongs_to :user

  attr_accessible :activity, :units, :value, :user_id, :completed
  validates_presence_of :user_id
end
