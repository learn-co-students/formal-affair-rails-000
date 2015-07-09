class CreateBabies < ActiveRecord::Migration
  def change
    create_table :babies do |t|
      t.string :first_name
      t.string :last_name
      t.integer :weight
      t.date :birth_date
    end
  end
end
