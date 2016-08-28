class RenameLastResetAtToResetSentAtInUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :last_reseted_at, :reset_sent_at
  end
end
