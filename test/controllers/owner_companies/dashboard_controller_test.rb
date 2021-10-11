require "test_helper"

class OwnerCompanies::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_companies_dashboard_index_url
    assert_response :success
  end
end
