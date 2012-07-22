class AddCountToUrl < ActiveRecord::Migration
  def change
    add_column :urls, :count, :integer, :default => 0, :null => false
  end
end
