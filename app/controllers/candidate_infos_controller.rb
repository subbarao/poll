class CandidateInfosController < ApplicationController
  before_action :set_candidate_info, only: [:show, :edit, :update, :destroy]

  # GET /candidate_infos
  # GET /candidate_infos.json
  def index
    @nominations = Nomination.all
	  @candidate_infos = CandidateInfo.all
  end

  # GET /candidate_infos/1
  # GET /candidate_infos/1.json
  def show
  end

  # GET /candidate_infos/new
  def new
    @candidate_info = CandidateInfo.new
  end

  # GET /candidate_infos/1/edit
  def edit
  end

  # POST /candidate_infos
  # POST /candidate_infos.json
  def create
    @candidate_info = CandidateInfo.new(candidate_info_params)

    respond_to do |format|
      if @candidate_info.save
        format.html { redirect_to @candidate_info, notice: 'Candidate info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @candidate_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @candidate_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidate_infos/1
  # PATCH/PUT /candidate_infos/1.json
  def update
    respond_to do |format|
      if @candidate_info.update(candidate_info_params)
        format.html { redirect_to @candidate_info, notice: 'Candidate info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @candidate_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidate_infos/1
  # DELETE /candidate_infos/1.json
  def destroy
    @candidate_info.destroy
    respond_to do |format|
      format.html { redirect_to candidate_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate_info
      @candidate_info = CandidateInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_info_params
      params.require(:candidate_info).permit(:sex, :age, :address, :mobile, :email, :pan, :married, :spouse_name, :education, :occupation, :income_for_2012_2013)
    end
end
