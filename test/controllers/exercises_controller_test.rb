require 'test_helper'

class ExercisesControllerTest < ActionController::TestCase
  setup do
    f = ExerciseType.create(description: "fake", calories_burned_per_minute: 5)
    @exercise = Exercise.create(exercise_type_id: f.id, date: "2012-04-09", time_in_minutes: 20, description: "running", calories_burned: 300)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:exercise)
  # end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise" do
    e = ExerciseType.create(description: "fake", calories_burned_per_minute: 5)
    assert_difference('Exercise.count') do
      post :create, exercise: { exercise_type_id: e.id, date: "2014-05-03", time_in_minutes: 30, description: "running", calories_burned: 300  }
    end

    assert_redirected_to exercise_path(assigns(:exercise))
  end

  test "should show exercise" do
    get :show, id: @exercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise
    assert_response :success
  end

  test "should update exercise" do
    e = ExerciseType.create(description: "fake", calories_burned_per_minute: 5)
    patch :update, id: @exercise, exercise: { exercise_type_id: e.id, date: "2012-04-09", time_in_minutes: 20, description: "running", calories_burned: 300  }
    assert_redirected_to exercise_path(assigns(:exercise))
  end

  test "should destroy exercise" do
    assert_difference('Exercise.count', -1) do
      delete :destroy, id: @exercise
    end

    assert_redirected_to exercises_path
  end
end
