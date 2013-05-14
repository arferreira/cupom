require 'test_helper'

class OffersControllerTest < ActionController::TestCase
  setup do
    @offer = offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer" do
    assert_difference('Offer.count') do
      post :create, offer: { address: @offer.address, contact: @offer.contact, content: @offer.content, count: @offer.count, dicount: @offer.dicount, final_date: @offer.final_date, price: @offer.price, rules: @offer.rules, start_date: @offer.start_date, title: @offer.title }
    end

    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should show offer" do
    get :show, id: @offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer
    assert_response :success
  end

  test "should update offer" do
    put :update, id: @offer, offer: { address: @offer.address, contact: @offer.contact, content: @offer.content, count: @offer.count, dicount: @offer.dicount, final_date: @offer.final_date, price: @offer.price, rules: @offer.rules, start_date: @offer.start_date, title: @offer.title }
    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should destroy offer" do
    assert_difference('Offer.count', -1) do
      delete :destroy, id: @offer
    end

    assert_redirected_to offers_path
  end
end
