class GratitudesController < ApplicationController
  before_action :set_gratitude, only: %i[ show edit update destroy ]

  # GET /gratitudes or /gratitudes.json
  def index
    @gratitudes = Gratitude.order(created_at: :desc)
  end

  # GET /gratitudes/1 or /gratitudes/1.json
  def show
  end

  # GET /gratitudes/new
  def new
    @gratitude = Gratitude.new
  end

  # GET /gratitudes/1/edit
  def edit
  end

  # POST /gratitudes or /gratitudes.json
  def create
    @gratitude = Gratitude.new(gratitude_params)

    respond_to do |format|
      if @gratitude.save
        format.html { redirect_to @gratitude, notice: "Gratitude was successfully created." }
        format.json { render :show, status: :created, location: @gratitude }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gratitude.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gratitudes/1 or /gratitudes/1.json
  def update
    respond_to do |format|
      if @gratitude.update(gratitude_params)
        format.html { redirect_to @gratitude, notice: "Gratitude was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @gratitude }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gratitude.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gratitudes/1 or /gratitudes/1.json
  def destroy
    @gratitude.destroy!

    respond_to do |format|
      format.html { redirect_to gratitudes_path, notice: "Gratitude was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gratitude
      @gratitude = Gratitude.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def gratitude_params
      params.expect(gratitude: [ :title, :body ])
    end
end
