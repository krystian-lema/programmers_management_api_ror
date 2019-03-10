require 'test_helper'

class ParadigmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paradigm = paradigms(:one)
  end

  test "should get index" do
    get paradigms_url, as: :json
    assert_response :success
  end

  test "should create paradigm" do
    assert_difference('Paradigm.count') do
      post paradigms_url, params: { paradigm: { name: @paradigm.name } }, as: :json
    end

    assert_response 201
  end

  test "should show paradigm" do
    get paradigm_url(@paradigm), as: :json
    assert_response :success
  end

  test "should update paradigm" do
    patch paradigm_url(@paradigm), params: { paradigm: { name: @paradigm.name } }, as: :json
    assert_response 200
  end

  test "should destroy paradigm" do
    assert_difference('Paradigm.count', -1) do
      delete paradigm_url(@paradigm), as: :json
    end

    assert_response 204
  end
end
