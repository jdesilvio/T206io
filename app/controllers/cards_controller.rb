class CardsController < ApplicationController
  def index
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      @info = Pgdb.getCardInfo(@card.card_name)
      render :index
    else
      render 'new'
    end
  end

  private

  def card_params
    params.require(:card).permit(:card_name)
  end
end
