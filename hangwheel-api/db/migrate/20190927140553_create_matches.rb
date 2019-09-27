class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :phrase_id
      t.integer :turns

      t.timestamps
    end
  end
end
