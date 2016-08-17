class AreasController < ApplicationController
  before_action :set_area, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user! 

  # GET /areas/new
  def new
    @area = Area.new
    respond_with(@area)
  end

  # GET /areas/1/edit
  def edit
  end

  # POST /areas
  # POST /areas.json
  def create
    @area = Area.new(area_params)
      @area.save
      redirect_to current_user
  end

  # PATCH/PUT /areas/1
  # PATCH/PUT /areas/1.json
  def update
    respond_to do |format|
      if @area.update(area_params)
        format.html { redirect_to @area, notice: 'Area was successfully updated.' }
        format.json { render :show, status: :ok, location: @area }
      else
        format.html { render :edit }
        format.json { render json: @area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /areas/1
  # DELETE /areas/1.json
  def destroy
    @area.destroy
    respond_to do |format|
        format.html { redirect_to current_user, notice: 'Area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
        @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_params
        params.require(:area).permit(:name, :user_id)
    end
end
