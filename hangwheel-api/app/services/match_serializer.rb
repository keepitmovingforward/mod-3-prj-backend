class MatchSerializer < ApplicationController

    def initialize(match_object)
      @match = match_object
    end

    def to_serialized_json
      @match.to_json({
        :include => {phrase: {except: [:created_at, :updated_at]}},
        :except => [:created_at, :updated_at, :phrase_id]})
    end

end
