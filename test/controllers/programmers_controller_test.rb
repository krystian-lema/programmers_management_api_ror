require 'test_helper'

class ProgrammersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programmer = programmers(:one)
  end

  test "should get index" do
    get programmers_url, as: :json
    assert_response :success
  end

  test "should create programmer" do
    assert_difference('Programmer.count') do
      post programmers_url, params: { programmer: { firstname: @programmer.firstname, lastname: @programmer.lastname, references: @programmer.references } }, as: :json
    end

    assert_response 201
  end

  test "should show programmer" do
    get programmer_url(@programmer), as: :json
    assert_response :success
  end

  test "should update programmer" do
    patch programmer_url(@programmer), params: { programmer: { firstname: @programmer.firstname, lastname: @programmer.lastname, references: @programmer.references } }, as: :json
    assert_response 200
  end

  test "should destroy programmer" do
    assert_difference('Programmer.count', -1) do
      delete programmer_url(@programmer), as: :json
    end

    assert_response 204
  end
end
