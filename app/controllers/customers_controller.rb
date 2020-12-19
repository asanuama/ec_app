class CustomersController < ApplicationController
  before_action :authenticate_customer!
  def show
  end

  def edit
  end

  def update
  end

  def resign
  end

  def resign_update
  end
  
  private
  def customer_params
    params.require(:customer).permit(:name, :name_kana, :postalcode, :address, :email, :tel)
  end
end
