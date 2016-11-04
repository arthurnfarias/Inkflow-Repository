class CreateOkrs < ActiveRecord::Migration[5.0]
  def change
    create_table :okrs do |t|
      t.string :title
      t.text :description
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
