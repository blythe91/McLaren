class ProgramReceptorsController < ApplicationController
  before_action :set_program_receptor, only: [:show, :edit, :update, :destroy]

  # GET /program_receptors
  # GET /program_receptors.json
  def index
    @program_receptors = ProgramReceptor.all
  end

  # GET /program_receptors/1
  # GET /program_receptors/1.json
  def show
  end

  # GET /program_receptors/new
  def new
    @program_receptor = ProgramReceptor.new
  end

  # GET /program_receptors/1/edit
  def edit
  end

  # POST /program_receptors
  # POST /program_receptors.json
  def create
    @program_receptor = ProgramReceptor.new(program_receptor_params)

    respond_to do |format|
      if @program_receptor.save
        format.html { redirect_to @program_receptor, notice: 'Program receptor was successfully created.' }
        format.json { render :show, status: :created, location: @program_receptor }
      else
        format.html { render :new }
        format.json { render json: @program_receptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_receptors/1
  # PATCH/PUT /program_receptors/1.json
  def update
    respond_to do |format|
      if @program_receptor.update(program_receptor_params)
        format.html { redirect_to @program_receptor, notice: 'Program receptor was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_receptor }
      else
        format.html { render :edit }
        format.json { render json: @program_receptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_receptors/1
  # DELETE /program_receptors/1.json
  def destroy
    @program_receptor.destroy
    respond_to do |format|
      format.html { redirect_to program_receptors_url, notice: 'Program receptor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_receptor
      @program_receptor = ProgramReceptor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_receptor_params
      params.require(:program_receptor).permit(:person_id, :spr_person_id)
    end
end
