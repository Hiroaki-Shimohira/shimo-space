class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.string :image, null: false
      t.references :user, null: false, index: true
      t.references :group, null: false, index: true
      t.timestamps
    end
  end
end
