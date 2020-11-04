class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
  end

  def create
    @expense = current_user.expenses.new(expense_params)

    if @expense.save
      redirect_to @expense
    else
      render 'new'
    end

  end

  def show
    @expense = Expense.find(params[:id])
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount)
  end
end
