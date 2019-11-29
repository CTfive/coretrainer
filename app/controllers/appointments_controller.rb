class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_client, only: [:index, :show, :edit]
  before_action :set_trainer, only: [:index, :show, :edit]

  def index
    @appointment = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @trainer = set_trainer
    
    @appointment = Appointment.new
  end

  def create
    @appointment = current_user.clients.last.trainers.last.appointments.create(appointment_params.merge(client_id: current_user.clients.last.id))
    if @appointment.valid?
      redirect_to root_path
    else
      render :new
    end
  end
  
  private

  def set_client 
    @client = Client.find_by(id: params[:client_id])
  end

  def set_trainer
    @trainer = Client.find_by(id: params[:trainer_id])
  end

  def current_client
    @current_client||= Client.find(params[:id])
  end

  def current_trainer
    @current_trainer||= Trainer.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:start_date, :end_date)
  end
end
