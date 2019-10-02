class PhrasesController < ApplicationController

  def index
    # byebug
    category = params[:category_name]

    phrases = filter_by_category(category)
    # phrases = Phrase.all

    render json: PhraseSerializer.new(phrases).to_serialized_json
  end

  def category_list
    categories = Phrase.categories
    render json: categories.to_json
  end


  def categorize
    category = params[:category]
    
  end

private

  def filter_by_category(category_name)
    phrases = Phrase.all
    if category_name == "all"
      return phrases
    else
      return phrases.where(category: category_name)
    end
  end



end
