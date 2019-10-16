class BiometricsController < ApplicationController
  def index
    @biometrics = Biometrics.find(params [:id])
  end

  private

  def bio_params
    require(:biometrics).permit(:name,
                                :phone,
                                :birthday,
                                :starting_weight,
                                :current_weight,
                                :goal_weight)
  end
end
