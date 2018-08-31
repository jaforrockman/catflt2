class BazesController < ApplicationController
  before_action :set_baze, only: [:show, :edit, :update, :destroy]

  # GET /bazes
  # GET /bazes.json
  def index
    @bazes = Baze.all
  end

  # GET /bazes/1
  # GET /bazes/1.json
  def show
  end

  # GET /bazes/new
  def new
    @baze = Baze.new
  end

  # GET /bazes/1/edit
  def edit
  end

  # POST /bazes
  # POST /bazes.json
  def create
    @baze = Baze.new(baze_params)

    respond_to do |format|
      if @baze.save
        format.html { redirect_to @baze, notice: 'Baze was successfully created.' }
        format.json { render :show, status: :created, location: @baze }
      else
        format.html { render :new }
        format.json { render json: @baze.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bazes/1
  # PATCH/PUT /bazes/1.json
  def update
    respond_to do |format|
      if @baze.update(baze_params)
        format.html { redirect_to @baze, notice: 'Baze was successfully updated.' }
        format.json { render :show, status: :ok, location: @baze }
      else
        format.html { render :edit }
        format.json { render json: @baze.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bazes/1
  # DELETE /bazes/1.json
  def destroy
    @baze.destroy
    respond_to do |format|
      format.html { redirect_to bazes_url, notice: 'Baze was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baze
      @baze = Baze.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baze_params
      params.require(:baze).permit(:title)
    end
end
