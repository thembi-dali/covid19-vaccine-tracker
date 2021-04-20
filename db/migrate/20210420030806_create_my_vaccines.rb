class CreateMyVaccines < ActiveRecord::Migration[6.1]
  def change
    create_table :my_vaccines do |t|
      t.date :given
      t.date :exp
      t.references :user, null: false, foreign_key: true
      t.references :vaccine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
