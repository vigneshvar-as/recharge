class AddMobileToMembers < ActiveRecord::Migration
  def change
    add_column :members, :mobile, :integer
  end
end
