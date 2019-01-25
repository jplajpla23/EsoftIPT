require 'test_helper'

class ErroLoginPasswordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @erro_login_password = erro_login_passwords(:one)
  end

  test "should get index" do
    get erro_login_passwords_url
    assert_response :success
  end

  test "should get new" do
    get new_erro_login_password_url
    assert_response :success
  end

  test "should create erro_login_password" do
    assert_difference('ErroLoginPassword.count') do
      post erro_login_passwords_url, params: { erro_login_password: { erro: @erro_login_password.erro, id: @erro_login_password.id, mensagem: @erro_login_password.mensagem } }
    end

    assert_redirected_to erro_login_password_url(ErroLoginPassword.last)
  end

  test "should show erro_login_password" do
    get erro_login_password_url(@erro_login_password)
    assert_response :success
  end

  test "should get edit" do
    get edit_erro_login_password_url(@erro_login_password)
    assert_response :success
  end

  test "should update erro_login_password" do
    patch erro_login_password_url(@erro_login_password), params: { erro_login_password: { erro: @erro_login_password.erro, id: @erro_login_password.id, mensagem: @erro_login_password.mensagem } }
    assert_redirected_to erro_login_password_url(@erro_login_password)
  end

  test "should destroy erro_login_password" do
    assert_difference('ErroLoginPassword.count', -1) do
      delete erro_login_password_url(@erro_login_password)
    end

    assert_redirected_to erro_login_passwords_url
  end
end
