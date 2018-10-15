class CreateAssemblies < ActiveRecord::Migration[5.2]
  def change
    create_table :assemblies do |t|
      t.string :name
      t.string :model

      t.timestamps
    end
  end
end
