class ProgrammersController < ApplicationController
  before_action :set_programmer, only: [:show, :update, :destroy]

  # GET /programmers
  def index
    @programmers = Programmer.all

    render json: @programmers
  end

  # GET /programmers/1
  def show
    render json: @programmer
  end

  # POST /programmers
  def create
    @programmer = Programmer.new(programmer_params)

    if @programmer.save
      render json: @programmer, status: :created, location: @programmer
    else
      render json: @programmer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /programmers/1
  def update
    if @programmer.update(programmer_params)
      render json: @programmer
    else
      render json: @programmer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /programmers/1
  def destroy
    @programmer.destroy
  end

  # PUT /programmers/:id/languages/rel/:language_id
  def add_language
    programmer = Programmer.find(params[:id])
    language = Language.find(params[:language_id])
    programmer.languages << language
    render json: { 'result': 'Language has been added.' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programmer
      @programmer = Programmer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def programmer_params
      params.require(:programmer).permit(:firstname, :lastname, :references)
    end
end
