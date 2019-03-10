class CreateJoinTableProgrammersLanguages < ActiveRecord::Migration[5.0]
  def change
    create_join_table :programmers, :languages do |t|
      # t.index [:programmer_id, :language_id]
      # t.index [:language_id, :programmer_id]
    end
  end
end
