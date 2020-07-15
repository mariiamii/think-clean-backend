class ProductsController < ApplicationController
    def index 
        @products = Product.all
        render json: @products
    end

    def show
        @product = Product.find(params[:id])
        render json: product
    end 


    def destroy
        @product = Product.find(params[:id])
        product.destroy
        render json: @product
    end

    def edit
        @product = Product.find(params[:id])
        render json: @product
    end

    def update
        @product = Product.find(params[:id])
        @product.update(product_params)
        render json: @product
    end

    private

    def product_params
        params.require(:product).permit(:brand_name, :product_name, :description, :image_url, :website)
    end
end
