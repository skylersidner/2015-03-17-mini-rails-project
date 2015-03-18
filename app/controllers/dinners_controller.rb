class DinnersController < ApplicationController
  def save
    @dinner = Dinner.create(main_source: params[:main_source], sauce: params[:sauce], starch: params[:starch], veggie: params[:veggie])
    redirect_to "/dinners/#{@dinner.id}/show"
  end
  
  def show
    @dinner = Dinner.find_by_id(params[:id])
  end
  
  def edit
    @dinner = Dinner.find_by_id(params[:id])
  end
  
  def update
    @dinner = Dinner.find_by_id(params[:id])
    @dinner.update_attributes(main_source: params[:main_source], sauce: params[:sauce], starch: params[:starch], veggie: params[:veggie])
    redirect_to "/dinners/#{@dinner.id}/show"
  end
  
  def destroy
    @dinner = Dinner.find_by_id(params[:id])
    @dinner.destroy
  end
    
  def list_all
    @list = Dinner.all
  end
end
