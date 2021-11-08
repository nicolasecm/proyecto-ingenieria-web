class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to products_company_path(company_id: params[:product][:company_id]), success: 'El producto ha sido creada satisfactoriamente' 
      else
        render :new, status: :unprocessable_entity 
      end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
      if @product.update(product_params)
        redirect_to products_company_path(company_id: params[:company_id]), notice: 'El producto ha sido actualizada satisfactoriamente' 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    redirect_back fallback_location: root_path, error: 'El producto ha sido eliminado satisfactoriamente'
  end

  def products_company

  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :price, :status, :company_id)
    end
end
