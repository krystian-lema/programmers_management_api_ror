class CreateProgrammers < ActiveRecord::Migration[5.0]
  def change
    create_table :programmers do |t|
      t.string :firstname
      t.string :lastname
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
