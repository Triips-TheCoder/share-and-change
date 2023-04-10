class CharitiesController < ApplicationController
  before_action :set_charity, only: %i[ show edit update destroy ]

  before_action do
    I18n.locale = :fr # Or whatever logic you use to choose.
  end
  
  before_action :authenticate_admin!, only: %i[ edit update destroy ]

  add_breadcrumb "Accueil", :root_path


  # GET /charities or /charities.json
  def index
    add_breadcrumb "Nos aides", charities_path
    @charities = Charity.paginate(page: params[:page], per_page: 10)

  end

  # GET /charities/1 or /charities/1.json
  def show
    add_breadcrumb "Nos aides", charities_path
    add_breadcrumb @charity.name, charity_path(@charity)
  end

  # GET /charities/new
  def new
    @charity = Charity.new
  end

  # GET /charities/1/edit
  def edit
  end

  # POST /charities or /charities.json
  def create
    @charity = Charity.new(charity_params)

    respond_to do |format|
      if @charity.save
        format.html { redirect_to charity_url(@charity), notice: "Charity was successfully created." }
        format.json { render :show, status: :created, location: @charity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charities/1 or /charities/1.json
  def update
    respond_to do |format|
      if @charity.update(charity_params)
        format.html { redirect_to charity_url(@charity), notice: "Charity was successfully updated." }
        format.json { render :show, status: :ok, location: @charity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charities/1 or /charities/1.json
  def destroy
    @charity.destroy

    respond_to do |format|
      format.html { redirect_to charities_url, notice: "Charity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity
      @charity = Charity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def charity_params
      params.require(:charity).permit(:logo, :catchphrase, :description, :phone, :email, :website, :adress, :zipcode, :city, :country, :name)
    end
end
