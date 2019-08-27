class CreateJournalResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :journal_responses do |t|
      t.references :entry, foreign_key: { to_table: :journal_entries }
      t.string :question
      t.text :answer
      t.integer :order

      t.timestamps
    end
    add_index :journal_responses, :order
  end
end
