class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.text :name
      t.text :description
      t.text :reference
      t.text :synonyms

      t.timestamps null: false
    end
  end
end
