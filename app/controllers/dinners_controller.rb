class DinnersController < ApplicationController
  def list_all
    @list = Dinner.all
  end
end
