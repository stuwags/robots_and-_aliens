class AddAliensAndRobots < ActiveRecord::Migration
  def change
    create_table :robots do |t|
      t.string :name
      t.string :photo
    end
    create_table :aliens do |t|
      t.string :name
      t.string :photo
    end
  end
end
