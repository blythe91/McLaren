class TrainingWorkshopsController < ApplicationController
  before_action :set_training_workshop, only: [:show, :edit, :update, :destroy]

  # GET /training_workshops
  # GET /training_workshops.json
  def index
    @training_workshops = TrainingWorkshop.all
  end

  # GET /training_workshops/1
  # GET /training_workshops/1.json
  def show
  end

  # GET /training_workshops/new
  def new
    @training_workshop = TrainingWorkshop.new
  end

  # GET /training_workshops/1/edit
  def edit
  end

  # POST /training_workshops
  # POST /training_workshops.json
  def create
    @training_workshop = TrainingWorkshop.new(training_workshop_params)

    respond_to do |format|
      if @training_workshop.save
        format.html { redirect_to @training_workshop, notice: 'Training workshop was successfully created.' }
        format.json { render :show, status: :created, location: @training_workshop }
      else
        format.html { render :new }
        format.json { render json: @training_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_workshops/1
  # PATCH/PUT /training_workshops/1.json
  def update
    respond_to do |format|
      if @training_workshop.update(training_workshop_params)
        format.html { redirect_to @training_workshop, notice: 'Training workshop was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_workshop }
      else
        format.html { render :edit }
        format.json { render json: @training_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_workshops/1
  # DELETE /training_workshops/1.json
  def destroy
    @training_workshop.destroy
    respond_to do |format|
      format.html { redirect_to training_workshops_url, notice: 'Training workshop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_workshop
      @training_workshop = TrainingWorkshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_workshop_params
      params.require(:training_workshop).permit(:description)
    end
end
