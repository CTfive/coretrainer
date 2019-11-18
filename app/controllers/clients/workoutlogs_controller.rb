class Clients::WorkoutlogsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_workoutlog, only: [:show, :edit, :update, :destroy]

  # GET /workoutlogs
  # GET /workoutlogs.json
  def index
    @workoutlogs = Workoutlog.all
  end

  # GET /workoutlogs/1
  # GET /workoutlogs/1.json
  def show
    @workoutlog = set_workoutlog
  end

  # GET /workoutlogs/new
  def new
    @workoutlog = Workoutlog.new
  end

  # GET /workoutlogs/1/edit
  def edit
    @workoutlog = set_workoutlog
  end

  # POST /workoutlogs
  # POST /workoutlogs.json
  def create
    @workoutlog = current_client.workoutlogs.create(workoutlog_params)
    respond_to do |format|
      if @workoutlog.save
        format.html { redirect_to clients_path, notice: 'Workoutlog was successfully created.' }
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
      if @current_client.workoutlogs.update(workoutlog_params)
        format.html { redirect_to clients_path, notice: 'Workoutlog was successfully updated.' }
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
    @current_client.workoutlogs.destroy
    respond_to do |format|
      format.html { redirect_to clients_path, notice: 'Workoutlog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def current_client
      @current_client||= Client.find(params[:client_id])
    end

    def set_workoutlog
      @workoutlog = Wworkoutlogs.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workoutlog_params
      params.require(:workoutlog).permit(:date, :weight, :mood, :notes)
    end
end

