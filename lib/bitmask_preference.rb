require "bitmask_preference/has_bitmask_preference"

ActiveRecord::Base.send :include, HasBitmaskPreference
