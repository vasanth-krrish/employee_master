require 'test_helper'

class EmployeeSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_skill = employee_skills(:one)
  end

  test "should get index" do
    get employee_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_skill_url
    assert_response :success
  end

  test "should create employee_skill" do
    assert_difference('EmployeeSkill.count') do
      post employee_skills_url, params: { employee_skill: { employee_id: @employee_skill.employee_id, skill_id: @employee_skill.skill_id } }
    end

    assert_redirected_to employee_skill_url(EmployeeSkill.last)
  end

  test "should show employee_skill" do
    get employee_skill_url(@employee_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_skill_url(@employee_skill)
    assert_response :success
  end

  test "should update employee_skill" do
    patch employee_skill_url(@employee_skill), params: { employee_skill: { employee_id: @employee_skill.employee_id, skill_id: @employee_skill.skill_id } }
    assert_redirected_to employee_skill_url(@employee_skill)
  end

  test "should destroy employee_skill" do
    assert_difference('EmployeeSkill.count', -1) do
      delete employee_skill_url(@employee_skill)
    end

    assert_redirected_to employee_skills_url
  end
end
