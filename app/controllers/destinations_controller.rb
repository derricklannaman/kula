class DestinationsController < ApplicationController
  def index
  end

  def jamaica
    @destination = Destination.where(name: params[:action].capitalize).first
    @dinners = @destination.dinners
    render layout: "jamaica"
  end

  def cuba
  end

  def brazil
  end

end