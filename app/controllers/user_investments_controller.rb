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
    @user_investment = UserInvestment.new(user_investment_params)

    respond_to do |format|
      if @user_investment.save
        format.html { redirect_to @user_investment, notice: "UserInvestment was successfully created." }
        format.json { render :show, status: :created, location: @user_investment }
      else
        format.html { render :new }
        format.json { render json: @user_investment.errors, status: :unprocessable_entity }
      end
    end
  end
end
