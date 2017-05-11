class StructureLevelsController < ApplicationController
  before_action :set_structure_level, only: [:show, :edit, :update, :destroy]

  # GET /structure_levels
  # GET /structure_levels.json
  def index
    @structure_levels = StructureLevel.all
  end

  # GET /structure_levels/1
  # GET /structure_levels/1.json
  def show
  end

  # GET /structure_levels/new
  def new
    @structure_level = StructureLevel.new
  end

  # GET /structure_levels/1/edit
  def edit
  end

  # POST /structure_levels
  # POST /structure_levels.json
  def create
    @structure_level = StructureLevel.new(structure_level_params)

    respond_to do |format|
      if @structure_level.save
        format.html { redirect_to @structure_level, notice: 'Structure level was successfully created.' }
        format.json { render :show, status: :created, location: @structure_level }
      else
        format.html { render :new }
        format.json { render json: @structure_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /structure_levels/1
  # PATCH/PUT /structure_levels/1.json
  def update
    respond_to do |format|
      if @structure_level.update(structure_level_params)
        format.html { redirect_to @structure_level, notice: 'Structure level was successfully updated.' }
        format.json { render :show, status: :ok, location: @structure_level }
      else
        format.html { render :edit }
        format.json { render json: @structure_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /structure_levels/1
  # DELETE /structure_levels/1.json
  def destroy
    @structure_level.destroy
    respond_to do |format|
      format.html { redirect_to structure_levels_url, notice: 'Structure level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_structure_level
      @structure_level = StructureLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def structure_level_params
      params.require(:structure_level).permit(:description)
    end
end
