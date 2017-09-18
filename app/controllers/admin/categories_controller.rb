class Admin::CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  layout 'admin'

  # GET /categories
  def index
    @categories = Category.all
  end

  # GET /categories/1
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, @category], notice: 'Categoria criada com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      redirect_to admin_categories_path, notice: 'Categoria alterada com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
    redirect_to admin_categories_url, notice: 'Categoria excluída com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:name)
    end
end
