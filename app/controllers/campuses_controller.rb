class CampusesController < InheritedResources::Base

  private

    def campus_params
      params.require(:campus).permit(:index, :new, :show)
    end
end

