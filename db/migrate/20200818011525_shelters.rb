class Shelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |s|
      s.string :name
      s.string :address
      s.string :city
      s.string :state
      s.string :zip
    end
  end
end
