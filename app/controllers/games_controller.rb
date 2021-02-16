class GamesController < ApplicationController
  def new
    alphabet = ("a".."z").to_a
    @grid = []

    9.times { @grid << alphabet.sample }
    # do
    # sample = alphabet.sample
    # if alphabet.sample.consonant?
    # end
  end

  def score

    #check if each letter of the word is a letter of the grid
    word = params[:word]
    word.each_char {|x| @grid.include?(x)}


    #check if the word is a valid english word (API)

    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"



# if word from grid && valid english word
    if url == true &&
      @message = "Well done!"
    else
      @message = "You suck!"
    end
  end
end
