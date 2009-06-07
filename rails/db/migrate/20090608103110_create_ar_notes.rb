class CreateArNotes < ActiveRecord::Migration
  def self.up
    create_table :ar_notes do |t|
      t.string :title
      t.text :body
      t.integer :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :ar_notes
  end
end
