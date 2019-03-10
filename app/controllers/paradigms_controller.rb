class ParadigmsController < ApplicationController
  before_action :set_paradigm, only: [:show, :update, :destroy]

  # GET /paradigms
  def index
    @paradigms = Paradigm.all

    render json: @paradigms
  end

  # GET /paradigms/1
  def show
    render json: @paradigm
  end

  # POST /paradigms
  def create
    @paradigm = Paradigm.new(paradigm_params)

    if @paradigm.save
      render json: @paradigm, status: :created, location: @paradigm
    else
      render json: @paradigm.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paradigms/1
  def update
    if @paradigm.update(paradigm_params)
      render json: @paradigm
    else
      render json: @paradigm.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paradigms/1
  def destroy
    @paradigm.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paradigm
      @paradigm = Paradigm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def paradigm_params
      params.require(:paradigm).permit(:name)
    end
end
