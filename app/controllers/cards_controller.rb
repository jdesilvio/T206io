class CardsController < ApplicationController

  before_action :authenticate_user!, only: [:create, :new]

  def index
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      @info = Psa_pop.where("psa_card LIKE ? AND psa_amount > 0", "%#{card_params[:card_name]}%".upcase).order(:full_back, :psa_grade_name)
      @summary_backs = Pgdb.connection.execute("SELECT * FROM summary_backs('#{card_params[:card_name]}')")
      @summary_grades = Pgdb.connection.execute("SELECT * FROM summary_grades('#{card_params[:card_name]}')")
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
