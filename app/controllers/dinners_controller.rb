class DinnersController < ApplicationController
    
  def index
    @list = Dinner.all
  end
  
  def new
    @dinner = Dinner.new
  end
  
  def create
    @dinner = Dinner.new(params[:dinner])
    if @dinner.save
      redirect_to "/dinners"
    else      
      render "new"
    end
    
    # @dinner = Dinner.create(main_source: params[:main_source], sauce: params[:sauce], starch: params[:starch], veggie: params[:veggie])
    # redirect_to "/dinners/#{@dinner.id}/show"
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

end
