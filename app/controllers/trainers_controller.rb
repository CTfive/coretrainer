class TrainersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_trainer, only: [:show, :edit, :update, :destroy]
  
    # GET /trainers
    # GET /trainers.json
    def index
      @trainers = Trainer.all
    end
  
    # GET /trainers/1
    # GET /trainers/1.json
    def show
      @trainer = set_trainer
    end
  
    # GET /trainers/new
    def new
      @trainer = Trainer.new
    end
  
    # GET /trainers/1/edit
    def edit
    end
  
    def clients
      @trainer = set_trainer
      @clients = trainer_clients
      @readonly = true
      render "client/index"
    end
  
    # POST /trainers
    # POST /trainers.json
    def create
      @trainer = current_user.trainers
      @trainer.create(trainer_params)
  
      respond_to do |format|
        if @trainer.save
          format.html { redirect_to trainer_path, notice: 'Trainer was successfully created.' }
          format.json { render :show, status: :created, location: @trainer }
        else
          format.html { render :new }
          format.json { render json: Trainer.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /trainers/1
    # PATCH/PUT /trainers/1.json
    def update
      @trainer = current_user
  
      respond_to do |format|
        if @trainer.trainers.update(trainer_params)
          format.html { redirect_to trainer_path, notice: 'Trainer was successfully updated.' }
          format.json { render :show, status: :ok, location: @trainer }
        else
          format.html { render :edit }
          format.json { render json: Trainer.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /trainers/1
    # DELETE /trainers/1.json
    def destroy
      @trainer.destroy
      respond_to do |format|
        format.html { redirect_to trainers_url, notice: 'Trainer was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_trainer
        @trainer = Trainer.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def trainer_params
        params.require(:trainer).permit(:athletic_background, :started_training, :specialties, :bio, :availability, :location, :certificate_id, :other_credentials)
      end
  end