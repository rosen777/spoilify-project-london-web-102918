class InvestmentsController < ApplicationController
  def index
    @investments = Investment.all
  end

  def show
    @investment = Investment.find(params[:id])
  end

end
