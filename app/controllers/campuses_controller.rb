class CampusesController < InheritedResources::Base


  def index
    @campuses = Campus.all
  end

  def show
  end

  def new
    @campus = Campus.new
  end


  private

    def campus_params
      params.require(:campus).permit(:name, :city, :state, :address, :phone, :zip_code)
    end
end

