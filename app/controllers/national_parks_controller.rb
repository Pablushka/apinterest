require 'csv'
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

  # GET /list national_parks
  def list_parks()
    lugar = "Provincia de "+national_park_params[:province]
    # nombre =  national_park_params[:name]

    table = CSV.parse(File.read("../../app/lib/data/national_parks_argentina.csv"), headers: true)

    province_park_list = table.select { |row| row['Lugar'] == lugar }    
    #csv.select { |row| row['GENDER'] == 'MALE' || row['SALARY'] >= 10000 }
    render json: {listado: province_park_list, objetos: province_park_list.count}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_national_park
      @national_park = NationalPark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def national_park_params
      params.require(:parque_nacional).permit(:province, :name, :region)
    end


end
