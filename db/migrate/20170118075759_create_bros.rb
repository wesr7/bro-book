class CreateBros < ActiveRecord::Migration[5.0]
  def change
    create_table :bros do |t|
      t.string :name
      t.string :college
      t.string :gym
      t.string :sport
      t.string :team

      t.timestamps
    end
  end
end
