class AddActiveAndCohortToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :active, :boolean
    add_column :users, :cohort, :integer
  end
end
