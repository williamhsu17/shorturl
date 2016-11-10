class CreateShorturls < ActiveRecord::Migration[5.0]
  def change
    create_table :shorturls do |t|
      t.string :input_url
      t.string :short_url

      t.timestamps
    end
  end
end
