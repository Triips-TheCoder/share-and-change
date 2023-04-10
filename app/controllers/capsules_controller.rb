class CapsulesController < ApplicationController
  before_action :set_capsule, only: %i[ show edit update destroy ]

  before_action do
    I18n.locale = :fr 
  end

  before_action :authenticate_admin!, only: %i[ edit update destroy ]  

  # GET /capsules or /capsules.json

  add_breadcrumb "Accueil", :root_path


  def index
    if params[:need_id].present?
      @need = Need.find(params[:need_id])
      @capsules = @need.capsules
    else
      @capsules = Capsule.all
    end

    add_breadcrumb "Témoignages", capsules_path

  end

  # GET /capsules/1 or /capsules/1.json
  def show
    add_breadcrumb "Témoignages", capsules_path
    add_breadcrumb @capsule.first_name , capsule_path(@capsule)
  end

  # GET /capsules/new
  def new
    @capsule = Capsule.new
  end

  # GET /capsules/1/edit
  def edit
  end

  # POST /capsules or /capsules.json
  def create
    @capsule = Capsule.new(capsule_params)

    respond_to do |format|
      if @capsule.save
        format.html { redirect_to capsule_url(@capsule), notice: "La capsule a été mise en ligne." }
        format.json { render :show, status: :created, location: @capsule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @capsule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capsules/1 or /capsules/1.json
  def update
    respond_to do |format|
      if @capsule.update(capsule_params)
        format.html { redirect_to capsule_url(@capsule), notice: "La capsule a été mise à jour." }
        format.json { render :show, status: :ok, location: @capsule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @capsule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capsules/1 or /capsules/1.json
  def destroy
    @capsule.destroy

    respond_to do |format|
      format.html { redirect_to capsules_url, notice: "La capsule a été détruite." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capsule
      @capsule = Capsule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capsule_params
      params.require(:capsule).permit(:charity_id, :need_id, :video, :quote, :poster, :first_name, :last_name)
    end
end
