require 'test_helper'

class ContractsControllerTest < ActionController::TestCase
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post :create, contract: { dept: @contract.dept, ref: @contract.ref, region: @contract.region, savings: @contract.savings, supplier: @contract.supplier, title: @contract.title, uploadedBy: @contract.uploadedBy, validFrom: @contract.validFrom, validTo: @contract.validTo }
    end

    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should show contract" do
    get :show, id: @contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract
    assert_response :success
  end

  test "should update contract" do
    patch :update, id: @contract, contract: { dept: @contract.dept, ref: @contract.ref, region: @contract.region, savings: @contract.savings, supplier: @contract.supplier, title: @contract.title, uploadedBy: @contract.uploadedBy, validFrom: @contract.validFrom, validTo: @contract.validTo }
    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete :destroy, id: @contract
    end

    assert_redirected_to contracts_path
  end
end
