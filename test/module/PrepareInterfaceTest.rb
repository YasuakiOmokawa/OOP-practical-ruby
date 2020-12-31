module PrepareInterfaceTest
  def test_implements_the_prepare_interface
    assert_respond_to(@object, :prepare_trip)
  end
end