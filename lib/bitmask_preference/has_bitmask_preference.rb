module HasBitmaskPreference
  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def has_bitmask_preference(storage_attribute, *bitmask_attributes)
      class_attribute :bitmask_attributes, :bitmask_storage_attribute

      self.bitmask_attributes = bitmask_attributes
      self.bitmask_storage_attribute = storage_attribute

      bitmask_attributes.each_with_index do |preference, index|

        define_method "#{preference}" do
          (send(storage_attribute) || 0) & (1 << index) > 0
        end
        alias_method "#{preference}?", preference

        define_method "#{preference}=" do |val|
          status = if val
            send(storage_attribute) | (1 << index)
          else
            send(storage_attribute) & ~(1 << index)
          end
          send("#{storage_attribute}=", status)
        end
      end
    end
  end
end
