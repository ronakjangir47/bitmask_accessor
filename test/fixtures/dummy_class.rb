ActiveRecord::Schema.define do
  create_table :dummy_classes do |t|
    t.integer :settings
  end
end

class DummyClass < ActiveRecord::Base
  has_bitmask_preference :settings, :email, :push_notification, :phone, :text
end
