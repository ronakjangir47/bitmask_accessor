require "test_helper"

class HasBitmaskPreferenceTest < Minitest::Test
  def test_instace_methods
    obj = DummyClass.new
    [:email, :push_notification, :phone, :text].each do |preference|
      assert_respond_to obj, preference
      assert_respond_to obj, "#{preference}?"
      assert_respond_to obj, "#{preference}="
    end
  end

  def test_class_methods
    [:email, :push_notification, :phone, :text].each do |preference|
      assert_respond_to DummyClass, "with_#{preference}"
      assert_respond_to DummyClass, "without_#{preference}?"
    end
  end

  def test_check_getter_setter
    obj = DummyClass.new(email: true, push_notification: false, phone: true)
    assert obj.email?
    assert !obj.push_notification?
    assert obj.phone?
    assert !obj.text?
  end
end
