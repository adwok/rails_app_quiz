class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @job = Job.new(job_params)
    render 'jobs/create.jbuilder'
  end

  def show
    @job = Job.find_by(id: params[:id])
    render 'jobs/:id'
  end

  def index
    @job = Job.all
    render 'jobs/index'
  end

end
