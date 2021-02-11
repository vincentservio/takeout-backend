class TakeoutsController < ApplicationController
  before_action :set_takeout, only: [:show, :update, :destroy]

  # GET /takeouts
  def index
    @takeouts = Takeout.all

    render json: @takeouts
  end

  # GET /takeouts/1
  def show
    render json: @takeout
  end

  # POST /takeouts
  def create
    @takeout = Takeout.new(takeout_params)

    if @takeout.save
      render json: @takeout, status: :created, location: @takeout
    else
      render json: @takeout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /takeouts/1
  def update
    if @takeout.update(takeout_params)
      render json: @takeout
    else
      render json: @takeout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /takeouts/1
  def destroy
    @takeout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_takeout
      @takeout = Takeout.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def takeout_params
      params.require(:takeout).permit(:name, :score, :comment, :best_order)
    end
end
