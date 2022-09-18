class CreateEnquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :enquiries do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :role
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
