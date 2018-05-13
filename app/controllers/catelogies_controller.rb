class CatelogiesController < ApplicationController
  before_action :set_catelogy, only: [:show, :edit, :update, :destroy]

  # GET /catelogies
  # GET /catelogies.json
  def index
    @catelogies = Catelogy.all
  end

  # GET /catelogies/1
  # GET /catelogies/1.json
  def show
  end

  # GET /catelogies/new
  def new
    @catelogy = Catelogy.new
  end

  # GET /catelogies/1/edit
  def edit
  end

  # POST /catelogies
  # POST /catelogies.json
  def create
    @catelogy = Catelogy.new(catelogy_params)

    respond_to do |format|
      if @catelogy.save
        format.html { redirect_to @catelogy, notice: 'Catelogy was successfully created.' }
        format.json { render :show, status: :created, location: @catelogy }
      else
        format.html { render :new }
        format.json { render json: @catelogy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catelogies/1
  # PATCH/PUT /catelogies/1.json
  def update
    respond_to do |format|
      if @catelogy.update(catelogy_params)
        format.html { redirect_to @catelogy, notice: 'Catelogy was successfully updated.' }
        format.json { render :show, status: :ok, location: @catelogy }
      else
        format.html { render :edit }
        format.json { render json: @catelogy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catelogies/1
  # DELETE /catelogies/1.json
  def destroy
    @catelogy.destroy
    respond_to do |format|
      format.html { redirect_to catelogies_url, notice: 'Catelogy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catelogy
      @catelogy = Catelogy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catelogy_params
      params.require(:catelogy).permit(:name, :description)
    end
end
