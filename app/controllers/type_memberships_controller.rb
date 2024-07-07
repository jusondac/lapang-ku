class TypeMembershipsController < ApplicationController
  before_action :set_type_membership, only: %i[ show edit update destroy ]

  # GET /type_memberships or /type_memberships.json
  def index
    @type_memberships = TypeMembership.all
  end

  # GET /type_memberships/1 or /type_memberships/1.json
  def show
  end

  # GET /type_memberships/new
  def new
    @type_membership = TypeMembership.new
  end

  # GET /type_memberships/1/edit
  def edit
  end

  # POST /type_memberships or /type_memberships.json
  def create
    @type_membership = TypeMembership.new(type_membership_params)

    respond_to do |format|
      if @type_membership.save
        format.html { redirect_to type_membership_url(@type_membership), notice: "Type membership was successfully created." }
        format.json { render :show, status: :created, location: @type_membership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_memberships/1 or /type_memberships/1.json
  def update
    respond_to do |format|
      if @type_membership.update(type_membership_params)
        format.html { redirect_to type_membership_url(@type_membership), notice: "Type membership was successfully updated." }
        format.json { render :show, status: :ok, location: @type_membership }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_memberships/1 or /type_memberships/1.json
  def destroy
    @type_membership.destroy

    respond_to do |format|
      format.html { redirect_to type_memberships_url, notice: "Type membership was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_membership
      @type_membership = TypeMembership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_membership_params
      params.require(:type_membership).permit(:name, :discount)
    end
end
