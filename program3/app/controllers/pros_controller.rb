class ProsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :set_pro, only: [:show, :edit, :update, :destroy]

  # GET /pros
  # GET /pros.json
  def index
    @pros = Pro.all.page(params[:page])
  end

  # GET /pros/1
  # GET /pros/1.json
  def show

  end

  # GET /pros/new
  def new
    @pro = Pro.new
  end

  # GET /pros/1/edit
  def edit
  end

  # POST /pros
  # POST /pros.json
  def create
    @pro = Pro.new(pro_params)

    respond_to do |format|
      if @pro.save
        format.html { redirect_to @pro, notice: 'Pro was successfully created.' }
        format.json { render :show, status: :created, location: @pro }
      else
        format.html { render :new }
        format.json { render json: @pro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pros/1
  # PATCH/PUT /pros/1.json
  def update
    respond_to do |format|
      if @pro.update(pro_params)
        format.html { redirect_to @pro, notice: 'Pro was successfully updated.' }
        format.json { render :show, status: :ok, location: @pro }
      else
        format.html { render :edit }
        format.json { render json: @pro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pros/1
  # DELETE /pros/1.json
  def destroy
    @pro.destroy
    respond_to do |format|
      format.html { redirect_to pros_url, notice: 'Pro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pro
      @pro = Pro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pro_params
      params.require(:pro).permit(:name)
    end
end
