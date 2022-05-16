class GamesController < ApplicationController

    require "open-uri"
    require "nokogiri"

  def new
    @letters = []
    10.times do
      @letters << Array('A'..'Z').sample
    end
  end

  def score
    #render
    @answer = ''
    @post = params[:word].upcase.split('')
    letters = params[:letters].split('')
    @result = @post & letters

    word = 'make'#params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)
    english_word = html_doc
    raise

    if @result.length != letters.length && english_word?
      return @answer = 'xrong!'
    end
  end


end
