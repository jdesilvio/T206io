class StaticPagesController < ApplicationController

  before_action :authenticate_user!, only: [:index]

  def index
  end

  def landing
  end

  def about
  end

  def contribute
  end
end
