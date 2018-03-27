class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.references :entity, foreign_key: true

      t.timestamps
    end
  end
end
