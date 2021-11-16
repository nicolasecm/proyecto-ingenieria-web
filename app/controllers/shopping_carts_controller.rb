class ShoppingCartsController < ApplicationController
  before_action :set_shopping_cart, only: %i[ show edit update destroy ]

  # GET /shopping_carts or /shopping_carts.json
  def index
   
  end

  # GET /shopping_carts/1 or /shopping_carts/1.json
  def show
  end


  def agregarObjetoCarrito
    @shopping_cart = ShoppingCart.new(product_id: params[:product_id], amount: params[:amount], price: params[:price], user_id: params[:user_id])
    respond_to do |format|
      if @shopping_cart.save
        format.html { redirect_to products_url, notice: "Se ha agregado el producto a tu carrito" }
      else
        format.json { render json: @shopping_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /shopping_carts/new
 

  # GET /shopping_carts/1/edit

  # POST /shopping_carts or /shopping_carts.json




  # DELETE /shopping_carts/1 or /shopping_carts/1.json
  def destroy
    @shopping_cart.destroy
    respond_to do |format|
      format.html { redirect_to shopping_carts_url, notice: "Shopping cart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_cart
      @shopping_cart = ShoppingCart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shopping_cart_params
      params.require(:shopping_cart).permit(:product_id, :amount, :price, :user_id)
    end
end
