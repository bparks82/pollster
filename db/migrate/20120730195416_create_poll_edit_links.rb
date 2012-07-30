class CreatePollEditLinks < ActiveRecord::Migration
  def change
    create_table :poll_edit_links do |t|
      t.string :url
      t.integer :poll_id

      t.timestamps
    end
  end
end
