class CampusesController < InheritedResources::Base
  before_filter :authorize, only: [:new, :index, :destroy]


  def index
    @campuses = Campus.all
  end

  def show
    @campus = Campus.find params[:id]

  end

  def new
    @campus = Campus.new
  end

  def create
    @campus = Campus.new(campus_params)
    respond_to do |format|
      if @campus.save
        format.html { redirect_to @campus, notice: 'Campus was successfully created.' }
        format.json { render :show, status: :created, location: @campus }
      else
        format.html { render :new }
        format.json { render json: @campus.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      @campus = Campus.find params[:id]
      if @campus.update(campus_params)
        format.html { redirect_to @campus, notice: 'Campus was successfully updated.' }
        format.json { render :show, status: :ok, location: @campus }
      else
        format.html { render :edit }
        format.json { render json: @campus.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @campus.destroy
    respond_to do |format|
      format.html { redirect_to campuses_url, notice: 'Campus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def campus_params
      params.require(:campus).permit(:name, :city, :state, :address, :phone, :zip_code)
    end
end

