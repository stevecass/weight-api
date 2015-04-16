class WeightsController < ApplicationController
  def index
    @weights = WeightMeasurement.recent.for_user(current_user)
    render json: @weights
  end

  def create
    meas = WeightMeasurement.new(weight_params)
    if meas.save
      render json: meas, status: 201
    else
      p meas.errors
      render text: 'Failed', status: 422
    end
  end

  private
  def weight_params
    params.permit(:taken_on, :weight).merge(user_id: current_user.id)
  end

end