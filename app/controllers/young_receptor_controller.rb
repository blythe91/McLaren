class YoungReceptorController < ApplicationController
	 before_action :set_spr_person, only: [:show, :edit, :update, :destroy]

  # GET /spr_people
  # GET /spr_people.json
  def index
    @spr_people = SprPerson.select("*")
  end

  def recep_index
    @spr_people = Person.joins(:spr_person)
  end
  # GET /spr_people/1
  # GET /spr_people/1.json
  def show

  end

  

  # GET /spr_people/new
  def new
    @spr_person = SprPerson.new
    @spr_person.people.build
  end

  # GET /spr_people/1/edit
  def edit
    @spr_person.people
  end

  # POST /spr_people
  # POST /spr_people.json
  def create
    @spr_person = SprPerson.new(spr_person_params)

    respond_to do |format|
      if @spr_person.save
        format.html { redirect_to @spr_person, notice: 'Spr person was successfully created.' }
        format.json { render :show, status: :created, location: @spr_person }
      else
        format.html { render :new }
        format.json { render json: @spr_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spr_people/1
  # PATCH/PUT /spr_people/1.json
  def update
    respond_to do |format|
      if @spr_person.update(spr_person_params)
        format.html { redirect_to @spr_person, notice: 'Spr person was successfully updated.' }
        format.json { render :show, status: :ok, location: @spr_person }
      else
        format.html { render :edit }
        format.json { render json: @spr_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spr_people/1
  # DELETE /spr_people/1.json
  def destroy
    @spr_person.destroy
    respond_to do |format|
      format.html { redirect_to spr_people_url, notice: 'Spr person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spr_person
      @spr_person = SprPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spr_person_params
      params.require(:spr_person).permit(:document, :asv_member, :representative, 
                                         :first_name, :second_name, :first_last_name, 
                                         :second_last_name, :gender, :mobile_phone, 
                                         :phone, :main_email, :second_email, :address, 
                                         :ocupation_id, :nationality_id, :academic_level_id, 
                                         :relationship_id, :document_type_id,
                                          people_attributes: [:id, :dnis, :birth, :promise_day, :parish_id])
    end
end
