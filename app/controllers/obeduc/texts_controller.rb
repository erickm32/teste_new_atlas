class Obeduc::TextsController < ApplicationController
  before_action :set_obeduc_text, only: [:show, :edit, :update, :destroy]

  # GET /obeduc/texts
  # GET /obeduc/texts.json
  def index
    @obeduc_texts = Obeduc::Text.all
  end

  # GET /obeduc/texts/1
  # GET /obeduc/texts/1.json
  def show
  end

  # GET /obeduc/texts/new
  def new
    @obeduc_text = Obeduc::Text.new
  end

  # GET /obeduc/texts/1/edit
  def edit
  end

  # POST /obeduc/texts
  # POST /obeduc/texts.json
  def create
    @obeduc_text = Obeduc::Text.new(obeduc_text_params)

    respond_to do |format|
      if @obeduc_text.save
        format.html { redirect_to @obeduc_text, notice: 'Text was successfully created.' }
        format.json { render :show, status: :created, location: @obeduc_text }
      else
        format.html { render :new }
        format.json { render json: @obeduc_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obeduc/texts/1
  # PATCH/PUT /obeduc/texts/1.json
  def update
    respond_to do |format|
      if @obeduc_text.update(obeduc_text_params)
        format.html { redirect_to @obeduc_text, notice: 'Text was successfully updated.' }
        format.json { render :show, status: :ok, location: @obeduc_text }
      else
        format.html { render :edit }
        format.json { render json: @obeduc_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obeduc/texts/1
  # DELETE /obeduc/texts/1.json
  def destroy
    @obeduc_text.destroy
    respond_to do |format|
      format.html { redirect_to obeduc_texts_url, notice: 'Text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obeduc_text
      @obeduc_text = Obeduc::Text.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obeduc_text_params
      params.require(:obeduc_text).permit(:codigo_texto, :texto_full)
    end
end
