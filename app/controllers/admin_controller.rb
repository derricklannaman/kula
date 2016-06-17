class AdminController < ApplicationController
  def dashboard
    @dinner = Dinner.new
    render layout: 'admin'
  end
end