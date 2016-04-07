class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string 'firstname'
      t.string 'lastname'
      t.string 'emailid'
      t.string 'phoneno'
      t.timestamps null: false
    end
  end
end
