class Obeduc::ColorsController < ApplicationController
  before_action :set_obeduc_color, only: [:show, :edit, :update, :destroy]

  # GET /obeduc/colors
  # GET /obeduc/colors.json
  def index
    @obeduc_colors = Obeduc::Color.all
  end

  # GET /obeduc/colors/1
  # GET /obeduc/colors/1.json
  def show
  end

  # GET /obeduc/colors/new
  def new
    @obeduc_color = Obeduc::Color.new
  end

  # GET /obeduc/colors/1/edit
  def edit
  end

  # POST /obeduc/colors
  # POST /obeduc/colors.json
  def create
    @obeduc_color = Obeduc::Color.new(obeduc_color_params)

    respond_to do |format|
      if @obeduc_color.save
        format.html { redirect_to @obeduc_color, notice: 'Color was successfully created.' }
        format.json { render :show, status: :created, location: @obeduc_color }
      else
        format.html { render :new }
        format.json { render json: @obeduc_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obeduc/colors/1
  # PATCH/PUT /obeduc/colors/1.json
  def update
    respond_to do |format|
      if @obeduc_color.update(obeduc_color_params)
        format.html { redirect_to @obeduc_color, notice: 'Color was successfully updated.' }
        format.json { render :show, status: :ok, location: @obeduc_color }
      else
        format.html { render :edit }
        format.json { render json: @obeduc_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obeduc/colors/1
  # DELETE /obeduc/colors/1.json
  def destroy
    @obeduc_color.destroy
    respond_to do |format|
      format.html { redirect_to obeduc_colors_url, notice: 'Color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obeduc_color
      @obeduc_color = Obeduc::Color.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obeduc_color_params
      params.require(:obeduc_color).permit(:hex_color, :tag)
    end
end
