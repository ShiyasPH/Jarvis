class CreateJournalEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :journal_entries do |t|
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :journal_entries, :date
  end
end
