class AutoSalesController < ApplicationController
  before_action :set_auto_sale, only: [:show, :edit, :update, :destroy]

  def index
    @auto_sales = AutoSale.all
  end

  def show
    @photos = @auto_sale.autos.photos.all
  end

  def new
    @auto_sale = AutoSale.new
  end

  def create
    @auto_sale = AutoSale.new(auto_sale_params)

    respond_to do |format|
      if @auto_sale.save
        format.html { redirect_to @auto_sale, notice: 'Auto sale was successfully created.' }
        format.json { render :show, status: :created, location: @auto_sale }
      else
        format.html { render :new }
        format.json { render json: @auto_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @auto_sale.update(auto_sale_params)
        format.html { redirect_to @auto_sale, notice: 'Auto sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @auto_sale }
      else
        format.html { render :edit }
        format.json { render json: @auto_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @auto_sale.destroy
    respond_to do |format|
      format.html { redirect_to auto_sales_url, notice: 'Auto sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_auto_sale
      @auto_sale = AutoSale.find(params[:id])
    end

    def auto_sale_params
      params.require(:auto_sale).permit(:title, :price,
        auto_attributes: [:name, :year, :madein, :type, :color, :went, :description]
        )
    end
end
