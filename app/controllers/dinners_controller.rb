class DinnersController < ApplicationController
  def save
    @dinner = Dinner.create(main_source: params[:main_source], sauce: params[:sauce], starch: params[:starch], veggie: params[:veggie])
  end
    
  def list_all
    @list = Dinner.all
  end
end
