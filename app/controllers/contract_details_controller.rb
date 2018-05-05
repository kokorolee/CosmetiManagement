class ContractDetailsController < ApplicationController
  before_action :set_contract_detail, only: [:show, :edit, :update, :destroy]

  # GET /contract_details
  # GET /contract_details.json
  def index
    @contract_details = ContractDetail.all
  end

  # GET /contract_details/1
  # GET /contract_details/1.json
  def show
  end

  # GET /contract_details/new
  def new
    @contract_detail = ContractDetail.new
  end

  # GET /contract_details/1/edit
  def edit
  end

  # POST /contract_details
  # POST /contract_details.json
  def create
    @contract_detail = ContractDetail.new(contract_detail_params)

    respond_to do |format|
      if @contract_detail.save
        format.html { redirect_to @contract_detail, notice: 'Contract detail was successfully created.' }
        format.json { render :show, status: :created, location: @contract_detail }
      else
        format.html { render :new }
        format.json { render json: @contract_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_details/1
  # PATCH/PUT /contract_details/1.json
  def update
    respond_to do |format|
      if @contract_detail.update(contract_detail_params)
        format.html { redirect_to @contract_detail, notice: 'Contract detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_detail }
      else
        format.html { render :edit }
        format.json { render json: @contract_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_details/1
  # DELETE /contract_details/1.json
  def destroy
    @contract_detail.destroy
    respond_to do |format|
      format.html { redirect_to contract_details_url, notice: 'Contract detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_detail
      @contract_detail = ContractDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_detail_params
      params.fetch(:contract_detail, {})
    end
end
