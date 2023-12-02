class EcardsController < ApplicationController
  before_action :set_ecard, only: %i[ show edit update destroy ]

  # GET /ecards or /ecards.json
  def index
    @ecards = Ecard.all
  end

  # GET /ecards/1 or /ecards/1.json
  def show
  end

  # GET /ecards/new
  def new
    @ecard = Ecard.new
  end

  # GET /ecards/1/edit
  def edit
  end

  # POST /ecards or /ecards.json
  def create
    @ecard = Ecard.new(ecard_params)

    respond_to do |format|
      if @ecard.save
        format.html { redirect_to ecard_url(@ecard), notice: "Ecard was successfully created." }
        format.json { render :show, status: :created, location: @ecard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ecard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecards/1 or /ecards/1.json
  def update
    respond_to do |format|
      if @ecard.update(ecard_params)
        format.html { redirect_to ecard_url(@ecard), notice: "Ecard was successfully updated." }
        format.json { render :show, status: :ok, location: @ecard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ecard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecards/1 or /ecards/1.json
  def destroy
    @ecard.destroy!

    respond_to do |format|
      format.html { redirect_to ecards_url, notice: "Ecard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecard
      @ecard = Ecard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ecard_params
      params.require(:ecard).permit(:name, :description, :picture)
    end
end
