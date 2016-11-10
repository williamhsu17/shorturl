class AddCounterToShorturl < ActiveRecord::Migration[5.0]
  def change
    add_column :shorturls, :link_counter, :integer, :default => 0
  end
end
