class AddCarrierwave < ActiveRecord::Migration
  def change
    add_column :robots, :avatar, :string
    
    add_column :aliens, :avatar, :string
  end
end
