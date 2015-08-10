class WelcomeController < ApplicationController

  def index
    @reviews = Review.all
  end

end