class CreateAllowedStates < ActiveRecord::Migration
  def change
    create_table :allowed_states do |t|
      t.integer :customer_id
      t.integer :state_id

      t.timestamps
    end
  end
end
