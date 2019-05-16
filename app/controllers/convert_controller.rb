class ConvertController < ApplicationController
  def index
  end

  def convert_currency
    value = ConvertService.new(params[:source_currency], params[:desired_currency], params[:amount]).perform
    render json: {"value": value}
  end
end
