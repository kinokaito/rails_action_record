class ActionsController < ApplicationController
  def index
      @start_of_week = Date.current.beginning_of_week
      @end_of_week = Date.current.end_of_week

      @actions = Action.where(day: @start_of_week..@end_of_week)
                      .group(:day, :category)
                      .select("day, category, SUM(total_time) as total_time")
      
      @categories = @actions.pluck(:category).uniq
      @dates = (@start_of_week..@end_of_week).map { |date| date.strftime('%Y-%m-%d')}

      @datasets = @categories.map do |category|
        {
          label: category,
          data: @dates.map do |date|
            total_time_on_date = @actions
                                  .select { |action| action.category == category && action.day.to_s == date }
                                  .reduce(0) { |sum, action| sum + action.total_time }
          end,
          backgroundColor: "#" + ("%06x" % (rand * 0xffffff))
        }
      end
  end

  def new
    @action = Action.new
  end

  def create
    @action = Action.new(action_params)
    if @action.save
      redirect_to "/actions", notice: '行動記録が正常に保存されました。'
    else
      render :new
    end
  end


  private

  def action_params
    params.require(:action).permit(:category, :start_time, :end_time, :day, :total_time)
  end

end
