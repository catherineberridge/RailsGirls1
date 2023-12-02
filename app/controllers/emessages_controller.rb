class EmessagesController < ApplicationController
  before_action :set_emessage, only: %i[ show edit update destroy ]

  # GET /emessages or /emessages.json
  def index
    @emessages = Emessage.all
  end

  # GET /emessages/1 or /emessages/1.json
  def show
  end

  # GET /emessages/new
  def new
    @emessage = Emessage.new
  end

  # GET /emessages/1/edit
  def edit
  end

  # POST /emessages or /emessages.json
  def create
    @emessage = Emessage.new(emessage_params)

    respond_to do |format|
      if @emessage.save
        format.html { redirect_to emessage_url(@emessage), notice: "Emessage was successfully created." }
        format.json { render :show, status: :created, location: @emessage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emessages/1 or /emessages/1.json
  def update
    respond_to do |format|
      if @emessage.update(emessage_params)
        format.html { redirect_to emessage_url(@emessage), notice: "Emessage was successfully updated." }
        format.json { render :show, status: :ok, location: @emessage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emessages/1 or /emessages/1.json
  def destroy
    @emessage.destroy!

    respond_to do |format|
      format.html { redirect_to emessages_url, notice: "Emessage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emessage
      @emessage = Emessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emessage_params
      params.require(:emessage).permit(:from_email, :to_email, :message, :ecard_id)
    end
end
