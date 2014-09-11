class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  if @product
    @product.m_category = MCategory.find_by_id(SCategory.find_by_s_category(@product.s_category).m_id).m_category 
    @product.save
  end   

  add_breadcrumb 'Home', '/'

  def search
    @products = Product.search(params[:search]).paginate(page: params[:page])
    @search_title = params[:search]
    add_breadcrumb @search_title
  end

  def index
    @products = Product.paginate(page: params[:page])
  end

  def show
    add_breadcrumb @product.l_category, lcategory_path(:lcat => LCategory.find_by_l_category(@product.l_category).id)
    add_breadcrumb @product.m_category, mcategory_path(:mcat => MCategory.find_by_m_category(@product.m_category).id)
    add_breadcrumb @product.s_category, scategory_path(:scat => SCategory.find_by_s_category(@product.s_category).id)
    add_breadcrumb @product.product_name
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

  def lcategory
    Logger.new("/tmp/log").debug( params)
    @category = [params[:lcat]]
    @products = Product.find_all_by_l_category(LCategory.find_by_id(@category).l_category).paginate(page: params[:page])
    add_breadcrumb LCategory.find_by_id(@category).l_category
  end

  def mcategory
    @category = [params[:mcat]]
    @products = Product.find_all_by_m_category(MCategory.find_by_id(@category).m_category).paginate(page: params[:page])
    add_breadcrumb MCategory.find_by_id(@category).l_category.l_category, lcategory_path(:lcat => MCategory.find_by_id(@category).l_category.id)
    add_breadcrumb MCategory.find_by_id(@category).m_category
  end

  def scategory
    @category = [params[:scat]]
    @products = Product.find_all_by_s_category(SCategory.find_by_id(@category).s_category).paginate(page: params[:page])
    add_breadcrumb SCategory.find_by_id(@category).l_category.l_category, lcategory_path(:lcat => SCategory.find_by_id(@category).l_category.id)
    add_breadcrumb SCategory.find_by_id(@category).m_category.m_category, mcategory_path(:mcat => SCategory.find_by_id(@category).m_category.id)
    add_breadcrumb SCategory.find_by_id(@category).s_category
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

  def get_amazonpc
    @keymaps = @product.product_name
    @res = Amazon::Ecs.item_search(keyword, 
                                   :item_page => i, :search_index => 'Electronics', :response_group => 'Medium')
    @amazon_price = @res.first.get('ItemAttributes/ListPrice/Amount') 
    return @amazon_price
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:product_name, :model, :brand, :new_price)
  end
end
