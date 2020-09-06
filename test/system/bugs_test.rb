require "application_system_test_case"

class BugsTest < ApplicationSystemTestCase
  setup do
    @bug = bugs(:one)
  end

  test "visiting the index" do
    visit bugs_url
    assert_selector "h1", text: "Bugs"
  end

  test "creating a Bug" do
    visit bugs_url
    click_on "New Bug"

    fill_in "Analyse", with: @bug.analyse
    fill_in "Beneficiaire", with: @bug.beneficiaire
    fill_in "Numero", with: @bug.numero
    fill_in "Statut", with: @bug.statut
    fill_in "Sujet", with: @bug.sujet
    fill_in "Titre", with: @bug.titre
    click_on "Create Bug"

    assert_text "Bug was successfully created"
    click_on "Back"
  end

  test "updating a Bug" do
    visit bugs_url
    click_on "Edit", match: :first

    fill_in "Analyse", with: @bug.analyse
    fill_in "Beneficiaire", with: @bug.beneficiaire
    fill_in "Numero", with: @bug.numero
    fill_in "Statut", with: @bug.statut
    fill_in "Sujet", with: @bug.sujet
    fill_in "Titre", with: @bug.titre
    click_on "Update Bug"

    assert_text "Bug was successfully updated"
    click_on "Back"
  end

  test "destroying a Bug" do
    visit bugs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bug was successfully destroyed"
  end
end
