class AddEditlinkToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :editlink, :string
  end
end
