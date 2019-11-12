class CustomersController < InheritedResources::Base

  private

    def customer_params
      params.require(:customer).permit(:email, :password, :password_confirmation, :name, :address, :postalcode, :province_id, :admin)
    end

end
