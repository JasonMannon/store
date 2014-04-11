class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.column :name, :string
    	t.column :description, :string
    	t.column :price, :float
    	t.column :admin_id, :int
    	t.timestamps 
    end
  end
end
