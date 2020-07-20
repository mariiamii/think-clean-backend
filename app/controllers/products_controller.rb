class ProductsController < ApplicationController
    # before_action :authorized, only: [:create]
    
    def index 
        @products = Product.all
        render json: @products
    end

    def show
        @product = Product.find(params[:id])
        render json: @product
    end 

    def create
        @product = Product.create(product_params)
        render json: @product
    end

    # def create
    #     @product = @user.products.create(brand_name: params[:brand_name], product_name: params[:product_name], description: params[:description], image_url: params[:image_url], website: params[:website])

    #     render json: @product
    # end

    def edit
        @product = Product.find(params[:id])
        render json: @product
    end

    def update
        @product = Product.find(params[:id])
        @product.update(product_params)
        render json: @product
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        render json: @product
    end

    private

    def product_params
        params.require(:product).permit(:product_id, :brand_name, :product_name, :description, :image_url, :website)
    end
end
