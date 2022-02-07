require "test_helper"

class CreateMeetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get create_meetings_name:string_url
    assert_response :success
  end
end
