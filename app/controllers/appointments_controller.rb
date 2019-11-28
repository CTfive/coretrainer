class AppointmentsController < ApplicationController
  def index
    @appointment = Appointment.create(appointment_params)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
    if @appointment.valid?
      redirect_to root_path
    end
  end



  private

  def appointment_params
    params.require(:appointment).permit(:start_date, :end_date)
  end
end
