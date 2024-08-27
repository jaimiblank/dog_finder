class ChangeUserIdColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :dogs, :user_id_id, :user
  end
end
