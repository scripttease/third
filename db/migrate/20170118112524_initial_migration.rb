class InitialMigration < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, null: false

      t.timestamps
    end

    create_table :recommendations do |t|
      t.string :recipient_email, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
