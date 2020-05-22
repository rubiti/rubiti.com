class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string :name
      t.string :short_description
      t.string :description
      t.string :phone
      t.string :email
      t.string :site
      t.string :location
      t.string :facebook
      t.string :linkedin
      t.string :github
      t.string :copyright
      t.string :copyright_short

      t.timestamps
    end
  end
end
