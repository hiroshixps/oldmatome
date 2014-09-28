class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_filter :headmetatag_control
  add_breadcrumb 'Home', '/'

  def search
    @products = Product.search(params[:search]).paginate(page: params[:page],:per_page => 40)
    @search_title = params[:search]
    add_breadcrumb '商品検索'
    add_breadcrumb "#{@search_title}の中古商品一覧"
  end

  def index
    @products = Product.paginate(page: params[:page], :per_page => 40)
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

  def headmetatag_control
    if request.path_info == "/"
      @titletag = "UsedX-中古家電の総合価格比較サイト"
      @meta_keyword ="中古,中古家電,中古パソコン,中古カメラ,中古携帯,中古エアコン,中古洗濯機,中古テレビ"
      @meta_description ="中古家電の総合価格比較サイトUsedX! あらゆる中古家電、PC、スマホの価格を簡単比較。ほしい商品を一番安く買えるサイト！"
      @robots ="index,follow"
      @canonical = "http://rpssales.com/"
    elsif @product
      @titletag = "#{@product.product_name}の中古価格一覧 | UsedX"
      @meta_keyword ="#{@product.product_name}, #{@product.brand},#{@product.series},中古価格,仕様,スペック, オークション,最安値"
      @meta_description ="#{@product.product_name}の中古価格一覧。アマゾン、楽天、ヤフオク、ebayから比較して一番安い価格を確認！"
      @robots ="index,follow"
      @canonical = request.path_info
    elsif params[:search]
      @titletag ="#{params[:search]}の中古商品検索結果 | UsedX"
      @meta_keyword ="#{params[:search]},中古価格,仕様,スペック, オークション,最安値"
      @meta_description ="#{params[:search]}の中古商品一覧。アマゾン、楽天、ヤフオク、ebayから比較して一番安い価格を確認！"
      @robots ="index,follow"
      @canonical = request.path_info
    elsif params[:lcat]
      @category = [params[:lcat]]
      @titletag ="#{LCategory.find_by(id: @category).l_category}の中古商品一覧 | UsedX"
      @meta_keyword ="#{LCategory.find_by(id: @category).l_category},中古価格,仕様,スペック, オークション,最安値"
      @meta_description ="#{LCategory.find_by(id: @category).l_category}の中古商品一覧。アマゾン、楽天、ヤフオク、ebayから比較して一番安い価格を確認！"
      @robots ="index,follow"
      @canonical = request.path_info
    elsif params[:mcat]
      @category = [params[:mcat]]
      @titletag ="#{MCategory.find_by(id: @category).m_category}の中古商品一覧 | UsedX"
      @meta_keyword ="#{MCategory.find_by(id: @category).m_category},中古価格,仕様,スペック, オークション,最安値"
      @meta_description ="#{MCategory.find_by(id: @category).m_category}の中古商品一覧。アマゾン、楽天、ヤフオク、ebayから比較して一番安い価格を確認！"
      @robots ="index,follow"
      @canonical = request.path_info
    elsif params[:scat]
      @category = [params[:scat]]
      @titletag ="#{SCategory.find_by(id: @category).s_category}の中古商品一覧 | UsedX"
      @meta_keyword ="#{SCategory.find_by(id: @category).s_category},中古価格,仕様,スペック, オークション,最安値"
      @meta_description ="#{SCategory.find_by(id: @category).s_category}の中古商品一覧。アマゾン、楽天、ヤフオク、ebayから比較して一番安い価格を確認！"
      @robots ="index,follow"
      @canonical = request.path_info
    end
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
