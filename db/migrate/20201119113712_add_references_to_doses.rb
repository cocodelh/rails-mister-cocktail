class AddReferencesToDoses < ActiveRecord::Migration[6.0]
  def change
    remove_column :doses, :ingredient_id, :integer
    remove_column :doses, :cocktail_id, :integer
    add_reference :doses, :ingredient, null: false, foreign_key: true
    add_reference :doses, :cocktail, null: false, foreign_key: true
  end
end
