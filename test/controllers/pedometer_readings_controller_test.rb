require 'test_helper'

class PedometerReadingsControllerTest < ActionController::TestCase
  setup do
    @pedometer_reading = pedometer_readings(:one)
  end

  test "should get index" do
    get :index, user_id: 1
    assert_response :success
    assert_not_nil assigns(:pedometer_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedometer_reading" do
    assert_difference('PedometerReading.count') do
    post :create, pedometer_reading: { steps: @pedometer_reading.steps, date: "2015-06-01",  user_id: 1 }
  end

    assert_redirected_to pedometer_reading_path(assigns(:pedometer_reading))
  end

  test "should show pedometer_reading" do
    get :show, id: @pedometer_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedometer_reading
    assert_response :success
  end

  test "should update pedometer_reading" do
    patch :update, id: @pedometer_reading, pedometer_reading: { steps: @pedometer_reading.steps, date: Date.today,  user_id: 1 }
    assert_redirected_to pedometer_reading_path(assigns(:pedometer_reading))
  end

  test "should destroy pedometer_reading" do
    assert_difference('PedometerReading.count', -1) do
      delete :destroy, id: @pedometer_reading
    end

    assert_redirected_to pedometer_readings_path
  end
end
