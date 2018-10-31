require "application_system_test_case"

class EmployedsTest < ApplicationSystemTestCase
  setup do
    @employed = employeds(:one)
  end

  test "visiting the index" do
    visit employeds_url
    assert_selector "h1", text: "Employeds"
  end

  test "creating a Employed" do
    visit employeds_url
    click_on "New Employed"

    fill_in "Actum", with: @employed.actum_id
    fill_in "Cargo", with: @employed.cargo
    fill_in "Cedula", with: @employed.cedula
    fill_in "Name", with: @employed.name
    click_on "Create Employed"

    assert_text "Employed was successfully created"
    click_on "Back"
  end

  test "updating a Employed" do
    visit employeds_url
    click_on "Edit", match: :first

    fill_in "Actum", with: @employed.actum_id
    fill_in "Cargo", with: @employed.cargo
    fill_in "Cedula", with: @employed.cedula
    fill_in "Name", with: @employed.name
    click_on "Update Employed"

    assert_text "Employed was successfully updated"
    click_on "Back"
  end

  test "destroying a Employed" do
    visit employeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employed was successfully destroyed"
  end
end
