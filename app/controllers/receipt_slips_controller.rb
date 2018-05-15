class ReceiptSlipsController < ApplicationController
  before_action :set_receipt_slip, only: [:show, :edit, :update, :destroy]

  # GET /receipt_slips
  # GET /receipt_slips.json
  def index
    @receipt_slips = ReceiptSlip.all
  end

  # GET /receipt_slips/1
  # GET /receipt_slips/1.json
  def show
  end

  # GET /receipt_slips/new
  def new
    @receipt_slip = ReceiptSlip.new
  end

  # GET /receipt_slips/1/edit
  def edit
  end

  # POST /receipt_slips
  # POST /receipt_slips.json
  def create
    @receipt_slip = ReceiptSlip.new(receipt_slip_params)

    respond_to do |format|
      if @receipt_slip.save
        format.html { redirect_to @receipt_slip, notice: 'Receipt slip was successfully created.' }
        format.json { render :show, status: :created, location: @receipt_slip }
      else
        format.html { render :new }
        format.json { render json: @receipt_slip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipt_slips/1
  # PATCH/PUT /receipt_slips/1.json
  def update
    respond_to do |format|
      if @receipt_slip.update(receipt_slip_params)
        format.html { redirect_to @receipt_slip, notice: 'Receipt slip was successfully updated.' }
        format.json { render :show, status: :ok, location: @receipt_slip }
      else
        format.html { render :edit }
        format.json { render json: @receipt_slip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipt_slips/1
  # DELETE /receipt_slips/1.json
  def destroy
    @receipt_slip.destroy
    respond_to do |format|
      format.html { redirect_to receipt_slips_url, notice: 'Receipt slip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipt_slip
      @receipt_slip = ReceiptSlip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receipt_slip_params
      params.require(:receipt_slip).permit(:date_receipt)
    end
end
