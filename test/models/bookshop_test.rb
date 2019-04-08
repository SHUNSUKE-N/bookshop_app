require 'test_helper'

class BookshopTest < ActiveSupport::TestCase

  def setup
    @bookshop = Bookshop.new(name: "Exampleshop", phone: "00-0000-0000", address: "tokyo", area: "sinjuku", station: "sinjukueki")
  end

  test "should be valid" do
    assert @bookshop.valid?
  end

  test "name should be present" do
    @bookshop.name = ""
    assert_not @bookshop.valid?
  end

  test "name should not be too long" do
    @bookshop.name = "a" * 51
    assert_not @bookshop.valid?
  end

  test "phone should be present" do
    @bookshop.phone = ""
    assert_not @bookshop.valid?
  end

  test "phone should be unique" do
    duplicate_bookshop = @bookshop.dup
    @bookshop.save
    assert_not duplicate_bookshop.valid?
  end

  test "address should be present" do
    @bookshop.address = ""
    assert_not @bookshop.valid?
  end

  test "address should not be too long" do
    @bookshop.address = "a" * 101
    assert_not @bookshop.valid?
  end

  test "area should be present" do
    @bookshop.area = ""
    assert_not @bookshop.valid?
  end

  test "area should not be too long" do
    @bookshop.area = "a" * 21
    assert_not @bookshop.valid?
  end

  test "station should be present" do
    @bookshop.station = ""
    assert_not @bookshop.valid?
  end

  test "station should not be too long" do
    @bookshop.station = "a" * 21
    assert_not @bookshop.valid?
  end

end
