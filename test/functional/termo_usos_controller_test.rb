require 'test_helper'

class TermoUsosControllerTest < ActionController::TestCase
  setup do
    @termo_uso = termo_usos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:termo_usos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create termo_uso" do
    assert_difference('TermoUso.count') do
      post :create, termo_uso: { content: @termo_uso.content, title: @termo_uso.title }
    end

    assert_redirected_to termo_uso_path(assigns(:termo_uso))
  end

  test "should show termo_uso" do
    get :show, id: @termo_uso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @termo_uso
    assert_response :success
  end

  test "should update termo_uso" do
    put :update, id: @termo_uso, termo_uso: { content: @termo_uso.content, title: @termo_uso.title }
    assert_redirected_to termo_uso_path(assigns(:termo_uso))
  end

  test "should destroy termo_uso" do
    assert_difference('TermoUso.count', -1) do
      delete :destroy, id: @termo_uso
    end

    assert_redirected_to termo_usos_path
  end
end
