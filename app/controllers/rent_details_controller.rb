class RentDetailsController < ApplicationController
  before_action :set_rent_detail, only: %i[ show edit update destroy ]

  # GET /rent_details or /rent_details.json
  def index
    @rent_details = RentDetail.all
  end

  # GET /rent_details/1 or /rent_details/1.json
  def show
  end

  # GET /rent_details/new
  def new
    @rent_detail = RentDetail.new
  end

  # GET /rent_details/1/edit
  def edit
  end

  # POST /rent_details or /rent_details.json
  def create
    @rent_detail = RentDetail.new(rent_detail_params)

    respond_to do |format|
      if @rent_detail.save
        format.html { redirect_to rent_detail_url(@rent_detail), notice: "Rent detail was successfully created." }
        format.json { render :show, status: :created, location: @rent_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rent_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rent_details/1 or /rent_details/1.json
  def update
    respond_to do |format|
      if @rent_detail.update(rent_detail_params)
        format.html { redirect_to rent_detail_url(@rent_detail), notice: "Rent detail was successfully updated." }
        format.json { render :show, status: :ok, location: @rent_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rent_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_details/1 or /rent_details/1.json
  def destroy
    @rent_detail.destroy

    respond_to do |format|
      format.html { redirect_to rent_details_url, notice: "Rent detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_detail
      @rent_detail = RentDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rent_detail_params
      params.require(:rent_detail).permit(:hours, :membership_id)
    end
end
