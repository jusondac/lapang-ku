class RentMembershipsController < ApplicationController
  before_action :set_rent_membership, only: %i[ show edit update destroy ]

  # GET /rent_memberships or /rent_memberships.json
  def index
    @rent_memberships = RentMembership.all
  end

  # GET /rent_memberships/1 or /rent_memberships/1.json
  def show
  end

  # GET /rent_memberships/new
  def new
    @rent_membership = RentMembership.new
  end

  # GET /rent_memberships/1/edit
  def edit
  end

  # POST /rent_memberships or /rent_memberships.json
  def create
    @rent_membership = RentMembership.new(rent_membership_params)

    respond_to do |format|
      if @rent_membership.save
        format.html { redirect_to rent_membership_url(@rent_membership), notice: "Rent membership was successfully created." }
        format.json { render :show, status: :created, location: @rent_membership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rent_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rent_memberships/1 or /rent_memberships/1.json
  def update
    respond_to do |format|
      if @rent_membership.update(rent_membership_params)
        format.html { redirect_to rent_membership_url(@rent_membership), notice: "Rent membership was successfully updated." }
        format.json { render :show, status: :ok, location: @rent_membership }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rent_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_memberships/1 or /rent_memberships/1.json
  def destroy
    @rent_membership.destroy

    respond_to do |format|
      format.html { redirect_to rent_memberships_url, notice: "Rent membership was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_membership
      @rent_membership = RentMembership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rent_membership_params
      params.require(:rent_membership).permit(:membership_id, :rent_id)
    end
end
