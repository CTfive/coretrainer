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
    @appointment = Appointment.new
  end

  def create
    @appointment = current_client.current_trainer.appointments.create(appointment_params.merge(trainer_id: current_trainer))
    if @appointment.valid?
      redirect_to root_path
    else
      render :new
    end
  end
  
  private

  def current_trainer
    @current_trainer||= Trainer.find_by(id: params[:id])
  end
  
  def current_client
    @current_client||= Client.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:start_date, :end_date)
  end
end
