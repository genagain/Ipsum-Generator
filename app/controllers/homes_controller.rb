class HomesController < ApplicationController
  def index
    # binding.pry
    @generator = Generator.new
  end
end
