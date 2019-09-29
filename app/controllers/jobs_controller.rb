class JobsController < ApplicationController

  def new
    @job = Job.new
  end

  def create
  @job = Job.create(params_job)
   
  end

  private
  def params_job
    params.require(:job).permit(:name,:conversion)
  end
end
