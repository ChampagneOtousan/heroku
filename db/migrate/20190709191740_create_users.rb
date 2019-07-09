class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |u|
      u.string :first_name
      u.string :last_name
      u.date = :date
      u.string = :email
      u.string :username
      u.string :password
    end
  end
end
