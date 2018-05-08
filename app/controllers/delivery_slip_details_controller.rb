class DeliverySlipDetailsController < ApplicationController
  before_action :set_delivery_slip_detail, only: [:show, :edit, :update, :destroy]

  # GET /delivery_slip_details
  # GET /delivery_slip_details.json
  def index
    @delivery_slip_details = DeliverySlipDetail.all
  end

  # GET /delivery_slip_details/1
  # GET /delivery_slip_details/1.json
  def show
  end

  # GET /delivery_slip_details/new
  def new
    @delivery_slip_detail = DeliverySlipDetail.new
  end

  # GET /delivery_slip_details/1/edit
  def edit
  end

  # POST /delivery_slip_details
  # POST /delivery_slip_details.json
  def create
    @delivery_slip_detail = DeliverySlipDetail.new(delivery_slip_detail_params)

    respond_to do |format|
      if @delivery_slip_detail.save
        format.html { redirect_to @delivery_slip_detail, notice: 'Delivery slip detail was successfully created.' }
        format.json { render :show, status: :created, location: @delivery_slip_detail }
      else
        format.html { render :new }
        format.json { render json: @delivery_slip_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_slip_details/1
  # PATCH/PUT /delivery_slip_details/1.json
  def update
    respond_to do |format|
      if @delivery_slip_detail.update(delivery_slip_detail_params)
        format.html { redirect_to @delivery_slip_detail, notice: 'Delivery slip detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery_slip_detail }
      else
        format.html { render :edit }
        format.json { render json: @delivery_slip_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_slip_details/1
  # DELETE /delivery_slip_details/1.json
  def destroy
    @delivery_slip_detail.destroy
    respond_to do |format|
      format.html { redirect_to delivery_slip_details_url, notice: 'Delivery slip detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_slip_detail
      @delivery_slip_detail = DeliverySlipDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_slip_detail_params
      params.require(:delivery_slip_detail).permit(:amount, :unit, :product_id, :delivery_slip_id)
    end
end
