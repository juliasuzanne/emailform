class CreateNotifiers < ActiveRecord::Migration[7.0]
  def change
    create_table :notifiers do |t|

      t.timestamps
    end
  end
end
