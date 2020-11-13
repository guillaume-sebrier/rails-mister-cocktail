class AddRecipeToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :recipe, :string
  end
end
