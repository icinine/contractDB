class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :title
      t.integer :ref
      t.string :region
      t.string :uploadedBy
      t.integer :savings
      t.string :dept
      t.string :supplier
      t.datetime :validFrom
      t.datetime :validTo

      t.timestamps null: false
    end
  end
end
