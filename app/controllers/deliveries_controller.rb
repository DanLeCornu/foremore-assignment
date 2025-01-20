class DeliveriesController < ApplicationController
  before_action :set_delivery, only: %i[ show edit update destroy ]
  before_action :set_total_cost, only: %i[ index total_cost ]

  # GET /deliveries or /deliveries.json
  def index
    @count = Delivery.search(params[:search]).count
    @page = [ params[:page].presence.to_i, 1 ].max
    @take = [ params[:take].presence.to_i, 10 ].max
    @total_pages = (@count.to_f / @take).ceil
    offset = @take * (@page - 1)
    @deliveries = Delivery.search(params[:search])
    .order(id: :desc)
    .offset(offset)
    .limit(@take)
  end

  # GET /total_cost
  def total_cost
  end

  # GET /deliveries/1 or /deliveries/1.json
  def show
  end

  # GET /deliveries/new
  def new
    @delivery = Delivery.new
  end

  # GET /deliveries/1/edit
  def edit
  end

  # POST /deliveries or /deliveries.json
  def create
    @delivery = Delivery.new(delivery_params)

    respond_to do |format|
      if @delivery.save
        format.html { redirect_to edit_delivery_path(@delivery), notice: "Delivery was successfully created." }
        # format.json { render :edit, status: :created, location: @delivery }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deliveries/1 or /deliveries/1.json
  def update
    respond_to do |format|
      if @delivery.update(delivery_params)
        format.html { redirect_to edit_delivery_path(@delivery), notice: "Delivery was successfully updated." }
        # format.json { render :show, status: :ok, location: @delivery }
      else
        format.html { render :edit, status: :unprocessable_entity }
        # format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveries/1 or /deliveries/1.json
  def destroy
    @delivery.destroy!

    respond_to do |format|
      format.html { redirect_to deliveries_path, status: :see_other, notice: "Delivery was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery
      @delivery = Delivery.find(params.expect(:id))
    end

    def set_total_cost
      @total_cost = Delivery.all.sum(:cost)
    end

    # Only allow a list of trusted parameters through.
    def delivery_params
      params.expect(delivery: [ :pickup_address, :delivery_address, :weight, :distance, :scheduled_time, :driver_name ])
    end
end
