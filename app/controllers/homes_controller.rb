class HomesController < ApplicationController
  def index
    @generator = Generator.new
  end
end
