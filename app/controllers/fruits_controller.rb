class FruitsController < ApplicationController
  def show
    @facade = FruitFacade.fruit_data(params[:search])
  end
end