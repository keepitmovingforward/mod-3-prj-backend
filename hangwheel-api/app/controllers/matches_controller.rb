class MatchesController < ApplicationController

  def index
    matches = Match.all
    render json: MatchSerializer.new(matches).to_serialized_json
  end

  def create
    match = Match.create(phrase_id: params[:phrase_id])
    render json: MatchSerializer.new(match).to_serialized_json
  end

  def update
    match = Match.find(params[:id])
    match_turns = params[:turns]
    match_won = params['won?']
    
    match.update(turns: match_turns, won?: match_won)
    render json: MatchSerializer.new(match).to_serialized_json
  end


end
