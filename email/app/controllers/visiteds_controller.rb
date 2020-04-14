class VisitedsController < ApplicationController
  before_action :set_visited, only: [:show, :edit, :update, :destroy]

  # GET /visiteds
  # GET /visiteds.json
  def index
    @visiteds = Visited.all
  end

  # GET /visiteds/1
  # GET /visiteds/1.json
  def show
  end

  # GET /visiteds/new
  def new
    @visited = Visited.new
  end

  # GET /visiteds/1/edit
  def edit
  end

  # POST /visiteds
  # POST /visiteds.json
  def create
    @visited = Visited.new(visited_params)

    respond_to do |format|
      if @visited.save
        format.html { redirect_to @visited, notice: 'Visited was successfully created.' }
        format.json { render :show, status: :created, location: @visited }
      else
        format.html { render :new }
        format.json { render json: @visited.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visiteds/1
  # PATCH/PUT /visiteds/1.json
  def update
    respond_to do |format|
      if @visited.update(visited_params)
        format.html { redirect_to @visited, notice: 'Visited was successfully updated.' }
        format.json { render :show, status: :ok, location: @visited }
      else
        format.html { render :edit }
        format.json { render json: @visited.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visiteds/1
  # DELETE /visiteds/1.json
  def destroy
    @visited.destroy
    respond_to do |format|
      format.html { redirect_to visiteds_url, notice: 'Visited was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visited
      @visited = Visited.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visited_params
      params.require(:visited).permit(:times)
    end
end
