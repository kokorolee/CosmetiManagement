class ImportCouponsController < ApplicationController
  before_action :set_import_coupon, only: [:show, :edit, :update, :destroy]

  # GET /import_coupons
  # GET /import_coupons.json
  def index
    @import_coupons = ImportCoupon.all
  end

  # GET /import_coupons/1
  # GET /import_coupons/1.json
  def show
  end

  # GET /import_coupons/new
  def new
    @import_coupon = ImportCoupon.new
  end

  # GET /import_coupons/1/edit
  def edit
  end

  # POST /import_coupons
  # POST /import_coupons.json
  def create
    @import_coupon = ImportCoupon.new(import_coupon_params)

    respond_to do |format|
      if @import_coupon.save
        format.html { redirect_to @import_coupon, notice: 'Import coupon was successfully created.' }
        format.json { render :show, status: :created, location: @import_coupon }
      else
        format.html { render :new }
        format.json { render json: @import_coupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_coupons/1
  # PATCH/PUT /import_coupons/1.json
  def update
    respond_to do |format|
      if @import_coupon.update(import_coupon_params)
        format.html { redirect_to @import_coupon, notice: 'Import coupon was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_coupon }
      else
        format.html { render :edit }
        format.json { render json: @import_coupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_coupons/1
  # DELETE /import_coupons/1.json
  def destroy
    @import_coupon.destroy
    respond_to do |format|
      format.html { redirect_to import_coupons_url, notice: 'Import coupon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_coupon
      @import_coupon = ImportCoupon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_coupon_params
      params.require(:import_coupon).permit(:date_import, :user_id, :contract_id)
    end
end
