class LrcsController < ApplicationController
  before_action :set_lrc, only: [:show, :edit, :update, :destroy]

  # GET /lrcs
  # GET /lrcs.json
  def index
    @lrcs = Lrc.all
  end

  # GET /lrcs/1
  # GET /lrcs/1.json
  def show
  end

  # GET /lrcs/new
  def new
    @lrc = Lrc.new
  end

  # GET /lrcs/1/edit
  def edit
  end

  # POST /lrcs
  # POST /lrcs.json
  def create
    @lrc = Lrc.new(lrc_params)

    respond_to do |format|
      if @lrc.save
        format.html { redirect_to @lrc, notice: 'Lrc was successfully created.' }
        format.json { render :show, status: :created, location: @lrc }
      else
        format.html { render :new }
        format.json { render json: @lrc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lrcs/1
  # PATCH/PUT /lrcs/1.json
  def update
    respond_to do |format|
      if @lrc.update(lrc_params)
        format.html { redirect_to @lrc, notice: 'Lrc was successfully updated.' }
        format.json { render :show, status: :ok, location: @lrc }
      else
        format.html { render :edit }
        format.json { render json: @lrc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lrcs/1
  # DELETE /lrcs/1.json
  def destroy
    @lrc.destroy
    respond_to do |format|
      format.html { redirect_to lrcs_url, notice: 'Lrc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lrc
      @lrc = Lrc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lrc_params
      params.require(:lrc).permit(:person_id, :closed, :issued, :iv_no, :reg_sl)
    end
end
