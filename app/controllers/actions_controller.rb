class ActionsController < ApplicationController
    def index
        @start_of_week = Date.current.beginning_of_week
        @end_of_week = Date.current.end_of_week

        @actions = Action.where(day: @start_of_week..@end_of_week)
                        .group(:day, :category)
                        .select("day, category, SUM(total_time) as total_time")
    end

    def new
      @action = Action.new
    end

    def create
      @action = Action.new(action_params)
      if @action.save
        render json: { message: '行動記録が保存されました' }, status: :created
      else
        render json: { error: '行動記録の保存に失敗しました' }, status: :unprocessable_entity
      end
    end


    private

    def action_params
      params.require(:action).permit(:start_time, :end_time, :total_time)
    end

end
