class CreateHouses < ActiveRecord::Migration
  def change
     create_table :houses do |t|
       t.string 'housetype'
       t.decimal 'price'
       t.datetime 'addeddate'
       t.string 'availability'
       t.string 'hno'
       t.string 'street'
       t.string 'city'
       t.string 'state'
       t.integer 'zipcode'
       t.references 'owner'
       t.timestamps
    end
  end
end
