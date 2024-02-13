class CreateNotifierMailers < ActiveRecord::Migration[7.0]
  def change
    create_table :notifier_mailers do |t|

      t.timestamps
    end
  end
end
