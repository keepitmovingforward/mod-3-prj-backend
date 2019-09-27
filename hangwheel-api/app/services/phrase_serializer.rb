class PhraseSerializer < ApplicationController

    def initialize(phrase_object)
      @phrase = phrase_object
    end

    def to_serialized_json
      @phrase.to_json(:except => [:created_at, :updated_at])
    end

end
