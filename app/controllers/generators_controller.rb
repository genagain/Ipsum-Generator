class GeneratorsController < ApplicationController

  def create
    flash[:notice] = 'You successfully generated your own Lorem Ipsum'
    generator = Generator.new
    generator.corpus = params["generator"]["corpus"]
    @paragraphs = []
    paragraph = ''
    params["generator"]["paragraph_number"].to_i.times do
      5.times do
        paragraph << generator.write_sentence
      end
      @paragraphs << paragraph
    end
    render 'generators/show', :locals => { :paragraphs => @paragraphs }
  end
end
