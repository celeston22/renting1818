class AddColumnsToUser < ActiveRecord::Migration[6.0]
    def change
      add_column :users, :first_name, :string, default: ""
      add_column :users, :last_name, :string, default: ""
      add_column :users, :address_line_1, :string, default: ""
      add_column :users, :address_line_2, :string, default: ""
      add_column :users, :zipcode, :string, default: ""
      add_column :users, :city, :string, default: ""
      add_column :users, :country, :string, default: ""
    end
  end