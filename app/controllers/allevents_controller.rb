class AlleventsController < ApplicationController
  before_action :set_allevent, only: [:show, :update, :destroy]

  # GET /allevents
  def index
    @allevents = Allevent.all

    render json: @allevents
  end

  # GET /allevents/1
  def show
    render json: @allevent
  end

  # POST /allevents
  def create
    @allevent = Allevent.new(allevent_params)

    if @allevent.save
      render json: @allevent, status: :created, location: @allevent
    else
      render json: @allevent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /allevents/1
  def update
    if @allevent.update(allevent_params)
      render json: @allevent
    else
      render json: @allevent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /allevents/1
  def destroy
    @allevent.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allevent
      @allevent = Allevent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def allevent_params
      params.require(:allevent).permit(:workshop, :others)
    end
end
