class DaysController < ApplicationController

  def index
    @days = current_user.days
  end

  def new
    @day = Day.new
  end

  def create
    @day = current_user.days.new(day_params)
    if @day.save
      redirect_to @day
    else
      render :new
    end
  end

  def show
    @day = Day.find(params[:id])
  end

  private


  def day_params
    params.require(:day).permit(:cash, :debit_card, :credit_card, :new_affiliates)
  end

end
