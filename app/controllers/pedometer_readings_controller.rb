class PedometerReadingsController < ApplicationController
  before_action :set_pedometer_reading, only: [:show, :edit, :update, :destroy]

  # GET /pedometer_readings
  # GET /pedometer_readings.json
  def index
    @pedometer_readings = PedometerReading.all
  end

  # GET /pedometer_readings/1
  # GET /pedometer_readings/1.json
  def show
  end

  # GET /pedometer_readings/new
  def new
    @pedometer_reading = PedometerReading.new
  end

  # GET /pedometer_readings/1/edit
  def edit
  end

  # POST /pedometer_readings
  # POST /pedometer_readings.json
  def create
    @pedometer_reading = PedometerReading.new(pedometer_reading_params)

    respond_to do |format|
      if @pedometer_reading.save
        format.html { redirect_to @pedometer_reading, notice: 'Pedometer reading was successfully created.' }
        format.json { render :show, status: :created, location: @pedometer_reading }
      else
        format.html { render :new }
        format.json { render json: @pedometer_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedometer_readings/1
  # PATCH/PUT /pedometer_readings/1.json
  def update
    respond_to do |format|
      if @pedometer_reading.update(pedometer_reading_params)
        format.html { redirect_to @pedometer_reading, notice: 'Pedometer reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedometer_reading }
      else
        format.html { render :edit }
        format.json { render json: @pedometer_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedometer_readings/1
  # DELETE /pedometer_readings/1.json
  def destroy
    @pedometer_reading.destroy
    respond_to do |format|
      format.html { redirect_to pedometer_readings_url, notice: 'Pedometer reading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedometer_reading
      @pedometer_reading = PedometerReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedometer_reading_params
      params.require(:pedometer_reading).permit(:steps)
    end
end
