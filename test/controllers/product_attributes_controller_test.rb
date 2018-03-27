require 'test_helper'

class ProductAttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_attribute = product_attributes(:one)
  end

  test "should get index" do
    get product_attributes_url, as: :json
    assert_response :success
  end

  test "should create product_attribute" do
    assert_difference('ProductAttribute.count') do
      post product_attributes_url, params: { product_attribute: { attribute_id: @product_attribute.attribute_id, product_id: @product_attribute.product_id, value: @product_attribute.value } }, as: :json
    end

    assert_response 201
  end

  test "should show product_attribute" do
    get product_attribute_url(@product_attribute), as: :json
    assert_response :success
  end

  test "should update product_attribute" do
    patch product_attribute_url(@product_attribute), params: { product_attribute: { attribute_id: @product_attribute.attribute_id, product_id: @product_attribute.product_id, value: @product_attribute.value } }, as: :json
    assert_response 200
  end

  test "should destroy product_attribute" do
    assert_difference('ProductAttribute.count', -1) do
      delete product_attribute_url(@product_attribute), as: :json
    end

    assert_response 204
  end
end
