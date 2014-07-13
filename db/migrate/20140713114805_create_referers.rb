class CreateReferers < ActiveRecord::Migration
  def change
    create_table :referers do |t|
      t.integer :referer , :null => false, :default => ""
    end
  end
  def down
    drop_table :referers
  end
end
