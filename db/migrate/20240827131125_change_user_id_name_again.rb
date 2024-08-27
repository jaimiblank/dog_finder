class ChangeUserIdNameAgain < ActiveRecord::Migration[7.1]
  def change
    rename_column :dogs, :user, :user_id
  end
end
