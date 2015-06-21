class CardsController < ApplicationController
  def index
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      render :index
    else
      render 'new'
    end
  end

  private

  def card_params
    params.require(:idea).permit(:card_name)
  end
end
