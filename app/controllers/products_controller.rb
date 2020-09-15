class ProductsController < ApplicationController
  before_action :find_user

  def show; end

  private

  def find_user
    @product = Product.find_by id: params[:id]
    return if @product

    flash[:danger] = t ".show.invalid_user_notify"
    redirect_to root_url
  end
end
