class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :model_type
      t.string :version

      t.timestamps
    end
  end
end
