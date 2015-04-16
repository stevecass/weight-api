class WeightMeasurement < ActiveRecord::Base
  belongs_to :user

  scope :for_user, ->(u){where(user: u)}
  scope :recent, -> {order('taken_on desc').limit(20)}

end
