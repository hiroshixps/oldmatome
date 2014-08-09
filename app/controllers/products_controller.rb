class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def search
    @products = Product.search(params[:search]).paginate(page: params[:page])
#    @keyword = params[:search]
#    if @keyword.present?
#      Amazon::Ecs.debug = true
#        @res = []
#      for i in 1..3 do
#        @res0 = Amazon::Ecs.item_search(params[:search], 
#                                        :item_page => i, :search_index => 'Electronics', :response_group => 'Medium')
#        @res.push(@res0)

#      end
#    else
#      return
#    end
  end

  def index
    @products = Product.paginate(page: params[:page])
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:title, :model_number, :brand, :price)
  end
end
