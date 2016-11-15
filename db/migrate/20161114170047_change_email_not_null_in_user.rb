class ChangeEmailNotNullInUser < ActiveRecord::Migration[5.0]
  def up
    User.where(email: nil).each do |user|
      user.email = "#{user.name}@no-email.com"
      user.save
    end
    change_column :users, :email, :string, null: false
  end

  def down
    change_column :users, :email, :string, null: true
  end
end
