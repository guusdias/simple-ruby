class ProductsController < ApplicationController

  def index
    @products = Product.order(name: :asc).limit 10
    @products_with_discount = Product.order(:preco).limit 1
  end

  def create
    produto  = params.require(:product).permit(:name, :description, :preco, :quantity)
    Product.create produto
    redirect_to root_path
  end

  def destroy
    id = params[:id]
    Product.destroy id
    redirect_to root_url
  end

  def search
    @name = params[:name]
    @products = Product.where "name like ?", "%#{@name}%"
  end
end
