# app/models/user.rb
class User < ApplicationController
 attr_accessor :zipcode
end

# app/models/product.rb
class Product < ApplicationController
 attr_accessor :warehouse_zipcode
end

# app/services/shipping_price_controller.rb
class ShippingPriceCalculator
  attr_reader :product, :user

  def initialize(product:, user:)
   @product = product
   @user = user
  end

  def calculate
     if international?
       50.00
     elsif shipping_distance > 100
       10.00
     elsif shipping_distance > 50
       5.50
     else
       2.00
     end
  end

  private

  def international?
    Fedex.international?(user.zipcode) # external call to a 3rd party API
  end

  def shipping_distance
   Fedex.get_distance(product.warehouse_zipcode, user.zipcode) # external call to a 3rd party API
  end
end

# routes.rb:
# get 'price_for_current_user', to: 'shipping_price#price_for_current_user'

# app/controllers/shipping_price_controller.rb
class ShippingPriceController < ApplicationController
  def price_for_current_user
    if params[:product_id].present?
      product = Product.find(params[:product_id])
      calculator = ShippingPriceCalculator.new(product: product, user: current_user)
      render json: { price: calculator.calculate }
    else
      render json: { errors: "Please specify a product_id." }
    end
  end
end
