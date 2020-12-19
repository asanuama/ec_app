class AddressesController < ApplicationController
  before_action :authenticate_customer!
  before_action :ensure_correct_customer ,only:[:edit, :update, :destroy ]
  def create
  end

  def index
  end

  def edit
  end

  def update
  end

  def destory
  end
  
  private
  def address_params
    params.require(:address).permit(:postalcode, :address, :delivery_name)
  end
  
  def ensure_correct_customer
    @address = Address.find(params[:id])
    if @address.customer != current_customer
      redirect_to customers_path
    end
  end
end
