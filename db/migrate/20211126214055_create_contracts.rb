class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :contracted_name
      t.string :contracted_id
      t.string :contracted_address
      t.string :contracted_division
      t.date :contract_validity
      t.string :contracted_signature

      t.timestamps
    end
  end
end
