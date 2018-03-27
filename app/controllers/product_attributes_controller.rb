class ProductAttributesController < ApplicationController
  before_action :set_product_attribute, only: [:show, :update, :destroy]

  # GET /product_attributes
  def index
    @product_attributes = ProductAttribute.all

    render json: @product_attributes
  end

  # GET /product_attributes/1
  def show
    render json: @product_attribute
  end

  # POST /product_attributes
  def create
    @product_attribute = ProductAttribute.new(product_attribute_params)

    if @product_attribute.save
      render json: @product_attribute, status: :created, location: @product_attribute
    else
      render json: @product_attribute.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_attributes/1
  def update
    if @product_attribute.update(product_attribute_params)
      render json: @product_attribute
    else
      render json: @product_attribute.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_attributes/1
  def destroy
    @product_attribute.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_attribute
      @product_attribute = ProductAttribute.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_attribute_params
      params.require(:product_attribute).permit(:product_id, :attribute_id, :value)
    end
end
