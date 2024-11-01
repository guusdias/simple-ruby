class ProductsController < ApplicationController

  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @products = Product.order(name: :asc).limit 10
    @products_with_discount = Product.order(:preco).limit 1
  end

  def new
    @produto = Product.new
    @departaments = Departament.all
  end

  def edit
    @produto = Product.new
    rendered :edit
  end

  def create
    @produto = Product.new product_params
    if @produto.save
      flash[:notice] = "Produto Salvo com sucesso"
      redirect_to root_path
    else
      rendered :new
    end
  end

  def update
    if @product.update product_params
      flash[:notice] = "Produto atualizado com sucesso"
      redirect_to root_path
    else
      rendered :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to root_url
  end

  def search
    @name = params[:name]
    @products = Product.where "name like ?", "%#{@name}%"
  end

  private

  def product_params
     params.require(:product).permit(:name, :description, :preco, :quantity, :departament_id)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def rendered(view)
    @departaments = Departament.all
    render view
  end
end
