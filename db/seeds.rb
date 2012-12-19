# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
User.delete_all
User.create :name => "Elizabeth", :email => "elizabethyoga@live.com", :password => "d0wnwardd0g^"
