require "application_system_test_case"

class EmployeeSkillsTest < ApplicationSystemTestCase
  setup do
    @employee_skill = employee_skills(:one)
  end

  test "visiting the index" do
    visit employee_skills_url
    assert_selector "h1", text: "Employee Skills"
  end

  test "creating a Employee skill" do
    visit employee_skills_url
    click_on "New Employee Skill"

    fill_in "Employee", with: @employee_skill.employee_id
    fill_in "Skill", with: @employee_skill.skill_id
    click_on "Create Employee skill"

    assert_text "Employee skill was successfully created"
    click_on "Back"
  end

  test "updating a Employee skill" do
    visit employee_skills_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @employee_skill.employee_id
    fill_in "Skill", with: @employee_skill.skill_id
    click_on "Update Employee skill"

    assert_text "Employee skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee skill" do
    visit employee_skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee skill was successfully destroyed"
  end
end
