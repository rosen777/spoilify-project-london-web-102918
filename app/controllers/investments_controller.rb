class InvestmentsController < ApplicationController
before_action :require_log_in
  def index
    @investments = Investment.all
  end

  def show
    @investment = Investment.find(params[:id])
  end

end
