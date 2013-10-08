class AddSubleaseToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :sublease, :boolean, default: false
  end
end
