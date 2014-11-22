class ReservationsController < InheritedResources::Base
  before_filter :authorize, only: [:new, :index, :destroy]

  private

    def reservation_params
      params.require(:reservation).permit(:event_title, :date, :starts_at, :ends_at, :room_id, :user_id)
    end
end

