class StaticPagesController < ApplicationController
  def home
    @products = Product.by_name(params[:name]).page(params[:page]).per Settings.paginate.items_per_page
  end
end
