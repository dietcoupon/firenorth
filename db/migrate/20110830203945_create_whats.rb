class CreateWhats < ActiveRecord::Migration
  def self.up
    create_table :whats do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :whats
  end
end
