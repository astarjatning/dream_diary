class CreateDiaryTags < ActiveRecord::Migration[6.1]
  def change
    create_table :diary_tags do |t|
      t.references :diary, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
    add_index :diary_tags, [:diary_id, :tag_id], unique: true
  end
end
