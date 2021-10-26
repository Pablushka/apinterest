class NationalParksController < ApplicationController
  before_action :set_national_park, only: [:show, :update, :destroy]

  # GET /national_parks
  def index
    @national_parks = NationalPark.all

    render json: @national_parks
  end

  # GET /national_parks/1
  def show
    render json: @national_park
  end

  # POST /national_parks
  def create
    @national_park = NationalPark.new(national_park_params)

    if @national_park.save
      render json: @national_park, status: :created, location: @national_park
    else
      render json: @national_park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /national_parks/1
  def update
    if @national_park.update(national_park_params)
      render json: @national_park
    else
      render json: @national_park.errors, status: :unprocessable_entity
    end
  end

  # DELETE /national_parks/1
  def destroy
    @national_park.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_national_park
      @national_park = NationalPark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def national_park_params
      params.require(:national_park).permit(:name)
    end
end
