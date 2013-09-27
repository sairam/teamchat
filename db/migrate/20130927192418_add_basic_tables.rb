class AddBasicTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :email
      t.string  :nickname,      null: false
      t.string  :name,          null: false
      t.integer :team_id,       null: false
      t.integer :role
      t.timestamps
    end

    create_table :teams do |t|
      t.string  :name,          null: false
      t.timestamps
    end

    create_table :rooms do |t|
      t.string  :name,          null: false
      t.integer :team_id,       null: false
      t.timestamps
    end

    create_table :messages do |t|
      t.integer :team_id,       null: false
      t.integer :room_id,       null: false
      t.integer :user_id,       null: false

      t.string :nickname,       null: false
      t.text   :message,        null: false
      t.string :message_type,   null: false
      t.timestamps
    end

  end
end
