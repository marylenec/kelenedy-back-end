class CartsController < ApplicationController
  before_action :select_user, only: [:show, :edit, :update, :destroy]

  def index
    # render welcome:static page
    @carts = Cart.all
  end

  def show
  end

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.new(params_cart)
    if @cart.valid?
      @cart.save
      redirect_to cart_path(@cart)
    else
      flash[:error_message] = cart.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
  end

  def update
    @cart.update(params_cart)
    redirect_to cart_path(@cart)
  end

  def destroy
    @cart.destroy
    redirect_to carts_path
  end

  private

  def params_cart
    params.require(:cart).permit(:user_id)
  end

  def select_cart
    @cart = Cart.find(params[:id])
  end

end
