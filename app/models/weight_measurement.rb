class WeightMeasurement < ActiveRecord::Base
  belongs_to :user
  validates :weight, :taken_on, presence: true

  scope :for_user, ->(u){where(user: u)}
  scope :recent, -> {order('taken_on desc').limit(20)}

end
