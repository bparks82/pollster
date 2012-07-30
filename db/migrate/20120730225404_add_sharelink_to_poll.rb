class AddSharelinkToPoll < ActiveRecord::Migration
  def change
    add_column :polls, :sharelink, :string
  end
end
