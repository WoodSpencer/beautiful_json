class BeautifiesController < ApplicationController
  before_action :set_beautify, only: [:show, :edit, :update, :destroy]

  # GET /beautifies
  # GET /beautifies.json
  def index
    @beautifies = Beautify.all
  end

  # GET /beautifies/1

  def show
    begin

      @text_to_render = JSON.pretty_generate(JSON.parse(@beautify.content))


    rescue JSON::ParserError => e
      @text_to_render = "null"
    end
  end

  # GET /beautifies/new
  def new
    @beautify = Beautify.new
  end

  # GET /beautifies/1/edit
  def edit
  end

  # POST /beautifies
  # POST /beautifies.json
  def create


    @beautify = Beautify.new(beautify_params)

    respond_to do |format|
      if @beautify.save
        format.html { redirect_to @beautify, notice: 'Beautify was successfully created.' }

      else
        format.html { render :new }
        format.json { render json: @beautify.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beautifies/1
  # PATCH/PUT /beautifies/1.json
  def update
    respond_to do |format|
      if @beautify.update(beautify_params)
        format.html { redirect_to @beautify, notice: 'Beautify was successfully updated.' }
        format.json { render :show, status: :ok, location: @beautify }
      else
        format.html { render :edit }
        format.json { render json: @beautify.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beautifies/1
  # DELETE /beautifies/1.json
  def destroy
    @beautify.destroy
    respond_to do |format|
      format.html { redirect_to beautifies_url, notice: 'Beautify was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beautify
      @beautify = Beautify.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beautify_params
      params.require(:beautify).permit(:content)
    end
end
