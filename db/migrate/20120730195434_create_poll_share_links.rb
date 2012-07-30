class CreatePollShareLinks < ActiveRecord::Migration
  def change
    create_table :poll_share_links do |t|
      t.string :url
      t.integer :poll_id

      t.timestamps
    end
  end
end
