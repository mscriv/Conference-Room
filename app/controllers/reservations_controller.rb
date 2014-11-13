class ReservationsController < InheritedResources::Base

  private

    def reservation_params
      params.require(:reservation).permit(:date, :starts_at, :ends_at, :room_id, :user_id)
    end
end

