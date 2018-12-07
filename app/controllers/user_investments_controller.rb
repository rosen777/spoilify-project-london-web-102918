class UserInvestmentsController < ApplicationController
  def new

    @user_investment = UserInvestment.new
  end

  # GET /user_investments/1/edit
  def edit
  end

  # POST /user_investments
  # POST /user_investments.json
  def create
    @user_investment = UserInvestment.create(investment_id: params["investment_id"], user_id: params["user_id"])
    return redirect_to "/welcome/home"


  end
end
