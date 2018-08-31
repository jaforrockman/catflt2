class WivesController < ApplicationController
  before_action :set_wife, only: [:show, :edit, :update, :destroy]

  # GET /wives
  # GET /wives.json
  def index
    @wives = Wife.all
  end

  # GET /wives/1
  # GET /wives/1.json
  def show
  end

  # GET /wives/new
  def new
    @wife = Wife.new
  end

  # GET /wives/1/edit
  def edit
  end

  # POST /wives
  # POST /wives.json
  def create
    @wife = Wife.new(wife_params)

    respond_to do |format|
      if @wife.save
        format.html { redirect_to @wife, notice: 'Wife was successfully created.' }
        format.json { render :show, status: :created, location: @wife }
      else
        format.html { render :new }
        format.json { render json: @wife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wives/1
  # PATCH/PUT /wives/1.json
  def update
    respond_to do |format|
      if @wife.update(wife_params)
        format.html { redirect_to @wife, notice: 'Wife was successfully updated.' }
        format.json { render :show, status: :ok, location: @wife }
      else
        format.html { render :edit }
        format.json { render json: @wife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wives/1
  # DELETE /wives/1.json
  def destroy
    @wife.destroy
    respond_to do |format|
      format.html { redirect_to wives_url, notice: 'Wife was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wife
      @wife = Wife.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wife_params
      params.require(:wife).permit(:person_bd, :name, :dob, :dom)
    end
end
