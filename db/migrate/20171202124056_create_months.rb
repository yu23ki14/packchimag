class CreateMonths < ActiveRecord::Migration[5.1]
  def change
    create_table :months do |t|
      t.integer :year
      t.integer :month
      t.string :title
      t.string :subtitle
      t.string :summary
      t.timestamps
    end
  end
end
