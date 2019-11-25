class AppointmentsController < ApplicationController
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
    @appointment = current_client.current_trainer.appointments.create(appointment_params)
  end



  private

  def current_client
    @current_client ||= Client.find(params[:client_id]) 
  end

  def current_trainer
    @current_trainer ||= Trainer.find(params[:trainer_id]) 
  end

  def appointment_params
    permit.require(:appointment).permit(:start, :end).merge(client_id: current_client, trainer_id: current_trainer)
  end
end
