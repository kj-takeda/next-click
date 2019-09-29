class PlansController < ApplicationController
  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.create(params_plan)
  end

  private
  def params_plan
    params.require(:plan).permit(:name,:week_pv,:week_price)
  end
end
