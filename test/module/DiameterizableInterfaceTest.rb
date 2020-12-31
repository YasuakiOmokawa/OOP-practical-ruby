module DiameterizableInterfaceTest
  def test_implements_the_diamaterizable_interface
    assert_respond_to(@object, :width)
  end
end