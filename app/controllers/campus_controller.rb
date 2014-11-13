class CampusController < InheritedResources::Base

  private

    def campu_params
      params.require(:campu).permit(:name, :city, :state, :phone_number, :zip_code)
    end
end

