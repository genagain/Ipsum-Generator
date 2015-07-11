class GeneratorsController < ApplicationController

  def create
    flash[:notice] = 'You successfully generated your own Lorem Ipsum'
    redirect_to root_path
  end
end
