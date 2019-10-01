class PhrasesController < ApplicationController

  def index
    phrases = Phrase.all
    render json: PhraseSerializer.new(phrases).to_serialized_json
  end

  # def show

end
