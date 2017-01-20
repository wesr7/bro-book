class CreateBroHobbies < ActiveRecord::Migration[5.0]
  def change
    create_table :bro_hobbies do |t|
      t.references :bro, index: true
      t.references :hobby, index: true

      t.timestamps
    end
  end
end
