class MealtypesController < ApplicationController
  before_action :set_mealtype, only: [:show, :edit, :update, :destroy]

  # GET /mealtypes
  # GET /mealtypes.json
  def index
    @mealtypes = Mealtype.all
  end

  # GET /mealtypes/1
  # GET /mealtypes/1.json
  def show
  end

  # GET /mealtypes/new
  def new
    @mealtype = Mealtype.new
  end

  # GET /mealtypes/1/edit
  def edit
  end

  # POST /mealtypes
  # POST /mealtypes.json
  def create
    @mealtype = Mealtype.new(mealtype_params)

    respond_to do |format|
      if @mealtype.save
        format.html { redirect_to @mealtype, notice: 'Mealtype was successfully created.' }
        format.json { render :show, status: :created, location: @mealtype }
      else
        format.html { render :new }
        format.json { render json: @mealtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mealtypes/1
  # PATCH/PUT /mealtypes/1.json
  def update
    respond_to do |format|
      if @mealtype.update(mealtype_params)
        format.html { redirect_to @mealtype, notice: 'Mealtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @mealtype }
      else
        format.html { render :edit }
        format.json { render json: @mealtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mealtypes/1
  # DELETE /mealtypes/1.json
  def destroy
    @mealtype.destroy
    respond_to do |format|
      format.html { redirect_to mealtypes_url, notice: 'Mealtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mealtype
      @mealtype = Mealtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mealtype_params
      params.require(:mealtype).permit(:name, :description)
    end
end
