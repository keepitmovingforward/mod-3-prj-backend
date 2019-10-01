class AddWonToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :won?, :boolean
  end
end
