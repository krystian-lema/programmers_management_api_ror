class CreateProgrammers < ActiveRecord::Migration[5.0]
  def change
    create_table :programmers do |t|
      t.string :firstname
      t.string :lastname
      t.team :references

      t.timestamps
    end
  end
end
