class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos do |t|
      t.references :user, foreign_key: true
      t.datetime :birth_date
      t.integer :gender
      t.integer :marital_status
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipcode
      t.integer :contact1
      t.integer :contact2
      t.string :linkedin_link
      t.string :twitter_link
      t.string :facebook_link

      t.timestamps
    end
  end
end
