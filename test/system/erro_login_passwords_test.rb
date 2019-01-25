require "application_system_test_case"

class ErroLoginPasswordsTest < ApplicationSystemTestCase
  setup do
    @erro_login_password = erro_login_passwords(:one)
  end

  test "visiting the index" do
    visit erro_login_passwords_url
    assert_selector "h1", text: "Erro Login Passwords"
  end

  test "creating a Erro login password" do
    visit erro_login_passwords_url
    click_on "New Erro Login Password"

    fill_in "Erro", with: @erro_login_password.erro
    fill_in "Id", with: @erro_login_password.id
    fill_in "Mensagem", with: @erro_login_password.mensagem
    click_on "Create Erro login password"

    assert_text "Erro login password was successfully created"
    click_on "Back"
  end

  test "updating a Erro login password" do
    visit erro_login_passwords_url
    click_on "Edit", match: :first

    fill_in "Erro", with: @erro_login_password.erro
    fill_in "Id", with: @erro_login_password.id
    fill_in "Mensagem", with: @erro_login_password.mensagem
    click_on "Update Erro login password"

    assert_text "Erro login password was successfully updated"
    click_on "Back"
  end

  test "destroying a Erro login password" do
    visit erro_login_passwords_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Erro login password was successfully destroyed"
  end
end
