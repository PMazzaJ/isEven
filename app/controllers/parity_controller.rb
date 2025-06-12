class ParityController < ApplicationController
  def index
    @number = valid_number_param(params[:number])
    @is_even = @number ? @number.to_i.even? : false
  end

  private

  def valid_number_param(param)
    param if param&.match?(/\A-?\d+\z/) && param.length <= 10
  end
end