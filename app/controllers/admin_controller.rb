class AdminController < ApplicationController
  def dashboard
    @dinners = Dinner.all
    @dinner = Dinner.new
    render layout: 'admin'
  end
end