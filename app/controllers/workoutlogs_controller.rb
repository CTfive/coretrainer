class WorkoutlogsController < ApplicationController
  before_action :set_workoutlog, only: [:show, :edit, :update, :destroy]

  # GET /workoutlogs
  # GET /workoutlogs.json
  def index
    @workoutlogs = Workoutlog.all
  end

  # GET /workoutlogs/1
  # GET /workoutlogs/1.json
  def show
  end

  # GET /workoutlogs/new
  def new
    @workoutlog = Workoutlog.new
  end

  # GET /workoutlogs/1/edit
  def edit
  end

  # POST /workoutlogs
  # POST /workoutlogs.json
  def create
    @workoutlog = Workoutlog.new(workoutlog_params)

    respond_to do |format|
      if @workoutlog.save
        format.html { redirect_to @workoutlog, notice: 'Workoutlog was successfully created.' }
        format.json { render :show, status: :created, location: @workoutlog }
      else
        format.html { render :new }
        format.json { render json: @workoutlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workoutlogs/1
  # PATCH/PUT /workoutlogs/1.json
  def update
    respond_to do |format|
      if @workoutlog.update(workoutlog_params)
        format.html { redirect_to @workoutlog, notice: 'Workoutlog was successfully updated.' }
        format.json { render :show, status: :ok, location: @workoutlog }
      else
        format.html { render :edit }
        format.json { render json: @workoutlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workoutlogs/1
  # DELETE /workoutlogs/1.json
  def destroy
    @workoutlog.destroy
    respond_to do |format|
      format.html { redirect_to workoutlogs_url, notice: 'Workoutlog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workoutlog
      @workoutlog = Workoutlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workoutlog_params
      params.fetch(:workoutlog, {})
    end
end
