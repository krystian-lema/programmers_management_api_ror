class CreateParadigms < ActiveRecord::Migration[5.0]
  def change
    create_table :paradigms do |t|
      t.string :name

      t.timestamps
    end
  end
end
