class NeedsController < ApplicationController
  before_action :set_need, only: %i[ show edit update destroy ]

  before_action do
    I18n.locale = :fr # Or whatever logic you use to choose.
  end
  
  before_action :authenticate_admin!, only: %i[ edit update destroy ]

  add_breadcrumb "Accueil", :root_path

  # GET /needs or /needs.json
  def index
    @needs = Need.all
    add_breadcrumb "Besoins", needs_path

  end

  # GET /needs/1 or /needs/1.json
  def show
    add_breadcrumb "Besoins", needs_path
    add_breadcrumb @need.name, need_path(@need)
  end

  # GET /needs/new
  def new
    @need = Need.new
  end

  # GET /needs/1/edit
  def edit
  end

  # POST /needs or /needs.json
  def create
    @need = Need.new(need_params)

    respond_to do |format|
      if @need.save
        format.html { redirect_to need_url(@need), notice: "Need was successfully created." }
        format.json { render :show, status: :created, location: @need }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @need.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /needs/1 or /needs/1.json
  def update
    respond_to do |format|
      if @need.update(need_params)
        format.html { redirect_to need_url(@need), notice: "Need was successfully updated." }
        format.json { render :show, status: :ok, location: @need }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @need.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /needs/1 or /needs/1.json
  def destroy
    @need.destroy

    respond_to do |format|
      format.html { redirect_to needs_url, notice: "Need was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_need
      @need = Need.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def need_params
      params.require(:need).permit(:name)
    end
end
