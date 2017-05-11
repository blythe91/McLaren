class TrainingLevelsController < ApplicationController
  before_action :set_training_level, only: [:show, :edit, :update, :destroy]

  # GET /training_levels
  # GET /training_levels.json
  def index
    @training_levels = TrainingLevel.all
  end

  # GET /training_levels/1
  # GET /training_levels/1.json
  def show
  end

  # GET /training_levels/new
  def new
    @training_level = TrainingLevel.new
  end

  # GET /training_levels/1/edit
  def edit
  end

  # POST /training_levels
  # POST /training_levels.json
  def create
    @training_level = TrainingLevel.new(training_level_params)

    respond_to do |format|
      if @training_level.save
        format.html { redirect_to @training_level, notice: 'Training level was successfully created.' }
        format.json { render :show, status: :created, location: @training_level }
      else
        format.html { render :new }
        format.json { render json: @training_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_levels/1
  # PATCH/PUT /training_levels/1.json
  def update
    respond_to do |format|
      if @training_level.update(training_level_params)
        format.html { redirect_to @training_level, notice: 'Training level was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_level }
      else
        format.html { render :edit }
        format.json { render json: @training_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_levels/1
  # DELETE /training_levels/1.json
  def destroy
    @training_level.destroy
    respond_to do |format|
      format.html { redirect_to training_levels_url, notice: 'Training level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_level
      @training_level = TrainingLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_level_params
      params.require(:training_level).permit(:description)
    end
end
