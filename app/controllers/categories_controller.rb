class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @products = @category.products
    render layout: 'admin'
  end

  def edit
  end

  def new
    @category = Category.new
    render layout: 'admin'
  end

  def create
    @category = Category.new(whitelisted_categories)
    if @category.save
      flash[:success] = 'Your category was created'
      redirect_to categories_path
    else
      flash.now[:error] = 'Your category'
      render :new, layout: 'admin'
    end
  end

  def index
    @categories = Category.all
    render layout: 'admin', locals: { rows: @categories, headings: %w(id name description) }
  end

  def destroy
    @category = Category.find(params[:id])
    Product.where("category_id = #{params[:id]}").each { |prod| prod.category_id = nil }
    @category.delete
    redirect_to categories_path
  end

  private

  def whitelisted_categories
    if params[:category]
      params.require(:category).permit(:name, :description)
    else
      params.permit(:name, :description)
    end
  end
end
