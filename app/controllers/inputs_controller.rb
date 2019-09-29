class InputsController < ApplicationController

  def index
   
  end

  def new
   @input = Input.new
  end

  def create
    if Input.create(params_input)
      redirect_to action: :job_type_serch
    else
      render action:new
    end
  end

  def job_type_serch #職種選定ページ
    
  end

  def answer
    @keyword = params[:keyword]
    @job = Job.find_by(name:@keyword)
    @inputs= Input.all
    @input = @inputs.last.people_number
    @plans = Plan.all
  end


  private
  def params_input
    params.require(:input).permit(:people_number,:recruit_percent)
  end

end
