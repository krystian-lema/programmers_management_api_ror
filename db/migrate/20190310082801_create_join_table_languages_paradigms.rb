class CreateJoinTableLanguagesParadigms < ActiveRecord::Migration[5.0]
  def change
    create_join_table :languages, :paradigms do |t|
      # t.index [:language_id, :paradigm_id]
      # t.index [:paradigm_id, :language_id]
    end
  end
end
