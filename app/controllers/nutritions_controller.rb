class NutritionsController < ApplicationController
  def index
    @facade = FruitFacade.similar_fruits(fruit_params["calories"])
    @similar_fruit = fruit_params["fruit"]
  end

  private

  def fruit_params
    params.permit(:calories, :fruit)
  end
end