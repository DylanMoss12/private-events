class AddColumnToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :datetime, :datetime
    remove_column :events, :date
    remove_column :events, :time
  end
end
