class Trainers::AppointmentsController < ApplicationController

  def create
    @appointment = current_client
    @appointment.appointments.trainers.create()
  end

  private

  def current_client
    @current_client =|| Client.find(params[client_id])
  end

  def appointment_params

  end
end
