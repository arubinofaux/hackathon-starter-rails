class JobsController < ApplicationController
  layout :jobs_layout
  before_action :set_job, only: [:show, :edit, :update, :destroy]
 
  def jobs_layout
    if user_signed_in? 
      return "user_backend"
    end
  end
  
  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  end
  
  # GET /jobs/list
  # GET /jobs.json
  def list
    @jobs = Job.all
  end

  def map
    @on_board = Job.all
    @jobs_count = Job.count
  	@jobs = Job.find(:all, :order => "id", :limit => 25)
  end
  
  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end
  
  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job }
      else
        format.html { render action: 'new' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:user_id, :title, :company, :company_url, :description, :location)
    end

end
