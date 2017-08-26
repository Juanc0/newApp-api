class TeamSoccersController < ApplicationController
    before_action :set_teamSoccer, only: [:show, :update, :destroy]

  # GET /teamSoccers
  def index
    @teamSoccers = TeamSoccer.all

    render json: @teamSoccers
  end

  # GET /teamSoccers/1
  def show
    render json: @teamSoccer
  end

  # POST /teamSoccers
  def create
    @teamSoccer = TeamSoccer.new(teamSoccer_params)

    if @teamSoccer.save
      render json: @teamSoccer, status: :created, location: @teamSoccer
    else
      render json: @teamSoccer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teamSoccers/1
  def update
    if @teamSoccer.update(teamSoccer_params)
      render json: @teamSoccer
    else
      render json: @teamSoccer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teamSoccers/1
  def destroy
    @teamSoccer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teamSoccer
      @teamSoccer = TeamSoccer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def teamSoccer_params
      params.require(:teamSoccer).permit(:name, :country , :coach)
    end
end
