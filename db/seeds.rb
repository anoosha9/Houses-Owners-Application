# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  

    # Seed the proj DB with some owners.
    more_owners = [
      {:firstname => 'sandeep', :lastname => 'reddy',
        :emailid => 'sandy@gmail.com', :phoneno => '2146142828'},
      {:firstname => 'anu', :lastname => 'rao',
        :emailid => 'anu@gmail.com', :phoneno => '2146140676'},
      {:firstname => 'sunny', :lastname => 'ysr',
        :emailid => 'sunny@gmail.com', :phoneno => '2142347896'}
    ]
     
    more_owners.each do |owner|
      Owner.create!(owner)
    end

