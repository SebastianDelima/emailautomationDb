class VisitedsController < ApplicationController
  before_action :set_visited, only: [:show, :edit, :update, :destroy]

  def index
    visits = Visited.all
    render :json => visits
  end

  def create
  
    visit = Visited.create(visited_params)
    visits = Visited.all
    render :json => visits
  end



  private
  
    def visited_params
      params.require(:visited).permit(:times)
    end
end
