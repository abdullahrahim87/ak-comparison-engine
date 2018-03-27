class CreateAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :attributes do |t|
      t.string :name
      t.references :entity, foreign_key: true

      t.timestamps
    end
  end
end
